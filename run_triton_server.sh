docker run -it --rm --gpus all -p8000:8000 -p8001:8001 -p8002:8002 --shm-size 8g \
  -v triton_volume:/models nvcr.io/nvidia/tritonserver:22.07-py3 \
  bash -c "pip install transformers torch==1.12.0 -f https://download.pytorch.org/whl/cu116/torch_stable.html && \
  tritonserver --model-repository=/models"