FROM jupyter/base-notebook:latest

USER root

RUN pip install torch==1.0.2

USER $NB_UID
