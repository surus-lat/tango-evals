#!/usr/bin/env python3
"""
aggregate_laleaderboard_es_acc.py

Computes the un-weighted mean of accuracy metrics across all per-task
`results_*.json` files produced by run_laleaderboard_es.sh.

Also computes an overall mean of ALL metrics from all tasks 
(assuming 0-1 range).

Usage: python aggregate_laleaderboard_es_acc.py
"""

import json
import glob
import os
import statistics

def main():
    result_dir = "tango-evals"
    file_pattern = os.path.join(result_dir, "results_*.json")
    
    accuracy_metrics = []
    all_metrics = []
    
    for file_path in glob.glob(file_pattern):
        try:
            with open(file_path, 'r') as f:
                data = json.load(f)
            
            # Look for metrics in all tasks
            for task_name, task_data in data.get("results", {}).items():
                
                for metric_key, metric_value in task_data.items():
                    # Skip stderr metrics and alias
                    if ("_stderr" in metric_key or metric_key == "alias"):
                        continue
                    
                    # Try to convert to float (handles both numeric and string values)
                    try:
                        metric_val = float(metric_value)
                    except (ValueError, TypeError):
                        continue
                    
                    # Only include metrics in 0-1 range
                    if not (0 <= metric_val <= 1):
                        continue
                    
                    # Add to all metrics
                    all_metrics.append(metric_val)
                    print(f"{task_name}: {metric_key} = {metric_val:.6f}")
                    
                    # Add to accuracy metrics if it's an accuracy metric
                    if metric_key.startswith("acc"):
                        accuracy_metrics.append(metric_val)
        
        except (json.JSONDecodeError, FileNotFoundError) as e:
            print(f"Error reading {file_path}: {e}")
            continue
    
    # Print results
    print("\n" + "="*50)
    if accuracy_metrics:
        mean_acc = statistics.mean(accuracy_metrics)
        print(f"Accuracy metrics: {len(accuracy_metrics)} values")
        print(f"Mean accuracy: {mean_acc:.6f}")
    else:
        print("No accuracy metrics found.")
    
    if all_metrics:
        mean_all = statistics.mean(all_metrics)
        print(f"\nAll metrics (0-1 range): {len(all_metrics)} values")
        print(f"Mean of all metrics: {mean_all:.6f}")
    else:
        print("No valid metrics found in any result files.")

if __name__ == "__main__":
    main() 