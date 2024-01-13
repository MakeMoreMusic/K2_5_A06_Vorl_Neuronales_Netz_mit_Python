FROM jupyter/base-notebook:latest

USER root

# Installiere erforderliche Systempakete
RUN apt-get update && \
    apt-get install -y libgl1-mesa-glx

USER $NB_UID

# Installiere PyTorch
RUN pip install torch==1.0.2
