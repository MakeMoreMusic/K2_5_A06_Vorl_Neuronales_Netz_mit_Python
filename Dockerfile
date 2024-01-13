FROM jupyter/base-notebook:latest

USER root

# Installiere erforderliche Systempakete
RUN apt-get update && \
    apt-get install -y --fix-missing libgl1-mesa-glx

USER $NB_UID

# Installiere PyTorch
RUN pip install torch==2.1.2
