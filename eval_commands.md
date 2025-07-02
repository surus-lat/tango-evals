!!!
(venv) root@DESKTOP-QAM7C2U:/mnt/a/Tango/llama.cpp/lm-evaluation-harness# lm_eval --model hf \ 
 --model_args="/mnt/a/Tango/llama.cpp/Llama-3.1-Tango-70b_Q4_K_M.gguf" \ 
--tasks=laleaderboard_es \ 
--num_fewshot=5 \ 
--device="cuda:0" \ 
--batch_size=1 \ 
--output_path="../tanguuito"
!!!




# WORKING, multi-gpu

lm_eval --model hf --model_args="pretrained=sandbox-ai/Llama-3.1-Tango-70b-bnb_4b,parallelize=True" --tasks=
laleaderboard_es --num_fewshot=1 --device="cuda" --batch_size=1 --output_path="../tango-evals" --max_batch_size=1



lm_eval --model hf --model_args="pretrained=Model-SafeTensors/Llama-3.1-Tango-70b,parallelize=True" --tasks=laleaderboard_es --
num_fewshot=5 --device="cuda" --batch_size=1 --output_path="../tango-evals"