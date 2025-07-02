#!/usr/bin/env bash
###############################################################################
# Sequential runner for all sub-tasks in lm_eval/tasks/laleaderboard_es.yaml
#  • No external yq / jq binaries required
#  • Skips tasks whose results_*json already exist (easy resume)
#  • Writes per-task logs to ./logs/
###############################################################################

set -Eeuo pipefail
IFS=$'\n\t'

# ───── User-editable section ────────────────────────────────────────────────
MODEL_ARGS='pretrained=sandbox-ai/Llama-3.1-Tango-70b-bnb_4b,parallelize=True,load_in_4bit=True'
OUTPUT_DIR="../tango-evals"        # where result files should be stored
DEVICE="cuda"                      # or "cpu"
BATCH_SIZE=1
MAX_BATCH_SIZE=1
# ────────────────────────────────────────────────────────────────────────────

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
YAML_FILE="${ROOT_DIR}/lm_eval/tasks/laleaderboard/laleaderboard_es.yaml"
ABS_OUTPUT_DIR="$( realpath "${OUTPUT_DIR}" )"
mkdir -p "${ROOT_DIR}/logs"

# ───── 1.  Read YAML with Python                                               
readarray -t TASK_LINES < <(
python - <<'PY' "${YAML_FILE}"
import sys, yaml
data = yaml.safe_load(open(sys.argv[1]))
for entry in data["task"]:
    # output:  taskname|fewshot
    print(f"{entry['task']}|{entry.get('num_fewshot', 0)}")
PY
)

echo "Found ${#TASK_LINES[@]} sub-tasks in $(realpath "${YAML_FILE}")"
echo "Results will be kept under ${ABS_OUTPUT_DIR}"
echo

# ───── 2.  Loop through tasks                                                 
SUCCESS=0; FAIL=0
for line in "${TASK_LINES[@]}"; do
    task="${line%%|*}"          # text before |
    fewshot="${line##*|}"       # text after  |

    # Skip if results already exist
    if compgen -G "${ABS_OUTPUT_DIR}/*/results_*${task}*.json" >/dev/null; then
        echo "⏭️  Skipping ${task} – results already present"
        continue
    fi

    log_file="${ROOT_DIR}/logs/${task}_$(date +%Y%m%d_%H%M%S).log"
    echo "=================================================================="
    echo "▶  Starting ${task}  (few-shot=${fewshot})"
    echo "   Log: ${log_file}"
    echo "=================================================================="

    if lm_eval \
        --model hf \
        --model_args "${MODEL_ARGS}" \
        --tasks "${task}" \
        --num_fewshot "${fewshot}" \
        --device "${DEVICE}" \
        --batch_size "${BATCH_SIZE}" \
        --max_batch_size "${MAX_BATCH_SIZE}" \
        --output_path "${ABS_OUTPUT_DIR}" 2>&1 | tee "${log_file}"
    then
        echo "✅  ${task} completed"
        ((SUCCESS++))
    else
        rc=$?
        echo "❌  ${task} FAILED (exit ${rc})"
        ((FAIL++))
    fi
    echo
done

# ───── 3.  Summary                                                          
echo "=========================== SUMMARY ==========================="
printf "Succeeded : %d\n" "${SUCCESS}"
printf "Failed    : %d\n" "${FAIL}"
echo "Results dir: ${ABS_OUTPUT_DIR}"
echo "Logs       : ${ROOT_DIR}/logs/"
echo "================================================================"