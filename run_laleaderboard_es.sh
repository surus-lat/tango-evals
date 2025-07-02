#!/usr/bin/env bash
###############################################################################
# Sequentially run every sub-task contained in
#   lm_eval/tasks/laleaderboard/laleaderboard_es.yaml
# If a task crashes, the script prints an error message and continues
# with the next task.  Each finished task leaves a
#   ../tango-evals/<model-name-sanitised>/results_<timestamp>.json
# file on disk, so partial progress is never lost.
#
# Requirements:
#   – GNU bash 4+
#   – yq (https://github.com/mikefarah/yq) for parsing YAML    (brew install yq | apt-get install yq)
###############################################################################

set -Eeuo pipefail            # fail fast, catch undefined vars, propagate errors
IFS=$'\n\t'                   # safer word splitting

MODEL_ARGS='pretrained=sandbox-ai/Llama-3.1-Tango-70b-bnb_4b,parallelize=True,load_in_4bit=True'
BASE_CMD=(lm_eval --model hf --device cuda --batch_size 1 --max_batch_size 1 \
          --output_path "../tango-evals")

YAML_FILE="lm_eval/tasks/laleaderboard/laleaderboard_es.yaml"

# --------------------------------------------------------------------------------
# 1. Read the YAML and build two arrays: TASK_NAME[i], FEWSHOT[i]
# --------------------------------------------------------------------------------
mapfile -t TASK_NAME  < <(yq e '.task[].task'        "$YAML_FILE")
mapfile -t FEWSHOT_CT < <(yq e '.task[].num_fewshot' "$YAML_FILE")

echo "Found ${#TASK_NAME[@]} sub-tasks in ${YAML_FILE}"
echo

# --------------------------------------------------------------------------------
# 2. Loop through tasks
# --------------------------------------------------------------------------------
for idx in "${!TASK_NAME[@]}"; do
    task="${TASK_NAME[$idx]}"
    fewshot="${FEWSHOT_CT[$idx]}"
    log_file="logs/${task}_$(date +%Y%m%d_%H%M%S).log"
    mkdir -p logs                       # keep individual logs

    echo "=================================================================="
    echo "▶  Starting task: ${task}     (few-shot = ${fewshot})"
    echo "   Log: ${log_file}"
    echo "=================================================================="

    # Run the harness
    if "${BASE_CMD[@]}" \
           --model_args "${MODEL_ARGS}" \
           --tasks "${task}" \
           --num_fewshot "${fewshot}" \
           2>&1 | tee "${log_file}"; then
        echo "✅  Task ${task} finished OK"
    else
        rc=$?
        echo "❌  Task ${task} FAILED with exit code ${rc}.  Check ${log_file}"
    fi

    echo
done

echo "=========================================="
echo "All subtasks attempted."
echo "Aggregated result files now live in ../tango-evals/<model-name>/*"