FROM jupyter/datascience-notebook
RUN jupyter labextension install @axlair/jupyterlab_vim
RUN jupyter lab build