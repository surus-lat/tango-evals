# Tango Evals

Repositorio para reproducir las evaluaciones de *laleaderboard* con el modelo (**Tango-70b**)[https://tangoia.com].


## Quick-start

1. Creá y activá un virtual-env de Python ≥ 3.9.  
2. Instalá dependencias y el harness en modo *editable*:

   ```bash
   pip install -r requirements.txt
   pip install -e .
   ```

3. Logeate en Hugging Face

   ```bash
   huggingface-cli login
   ```

4. Ejecutá el script:

   ```bash
   chmod +x run_laleaderboard_es.sh
   ./run_laleaderboard_es.sh
   ```

El script recorre cada sub-tarea definida en
`lm_eval/tasks/laleaderboard/laleaderboard_es.yaml`, ejecutando **una a la vez**. Apenas una tarea termina se escribe el archivo `results_<timestamp>.json`, por lo que si el proceso se interrumpe conservás todo lo ya completado.

## Dónde quedan los resultados

Los resultados se guardan en el directorio indicado en `OUTPUT_DIR` al principio del script (por defecto `../tango-evals`). Ejemplo de estructura:

```
<OUTPUT_DIR>/
  └── <model-name-sanitised>/
        ├── results_2024-05-29T14-52-17.json   # métricas de una tarea
        └── …                                  # más tareas / timestamps
```

Los logs de consola por tarea se almacenan en `./logs/` junto al script.

## Reanudar o volver a correr

• El script detecta archivos `results_*<task>.json` existentes y salta esas tareas.  
• Podés ajustar `MODEL_ARGS`, tamaño de batch, dispositivo, etc. editando el encabezado del script.

## Hardware

– Hardware usado: 4 × NVIDIA RTX 3090, 256 GB RAM.  
– Ajustá batch size o paralelismo según tu GPU.

