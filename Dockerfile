FROM jupyter/datascience-notebook
RUN jupyter labextension install @axlair/jupyterlab_vim
RUN jupyter lab build


RUN julia -e 'using Pkg; Pkg.instantiate;'

# Plotsを追加
RUN julia -e 'using Pkg; Pkg.add("Plots"); using Plots'
# DifferentialEquationsを追加
RUN julia -e 'using Pkg; Pkg.add("DifferentialEquations"); using DifferentialEquations'