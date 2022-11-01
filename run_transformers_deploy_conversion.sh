docker run -it --rm --gpus all -v hf_volume:/project ghcr.io/els-rd/transformer-deploy:0.5.1 \
    bash -c "cd /project && \
    convert_model -m ./gpt2-netflix-model \
    --backend tensorrt onnx \
    --seq-len 6 256 256 \
    --task text-generation"