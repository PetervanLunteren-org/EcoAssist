#!/usr/bin/env bash
cd ~/EcoAssist_files || { echo "Could not change directory to EcoAssist_files. Command could not be run. Did you change the name or folder structure since installing EcoAssist?"; exit 1; }
PATH2CONDA=`conda info | grep 'base environment' | cut -d ':' -f 2 | xargs | cut -d ' ' -f 1`
echo "Path to conda: $PATH2CONDA"
PATH2CONDA_SH="$PATH2CONDA/etc/profile.d/conda.sh"
echo "Path to conda.sh: $PATH2CONDA_SH"
PATH2PYTHON3="$PATH2CONDA/envs/ecoassistcondaenv/bin/python3"
echo "Path to python3: $PATH2PYTHON3"
# shellcheck source=src/conda.sh
source $PATH2CONDA_SH
conda activate ecoassistcondaenv
export PYTHONPATH="$PYTHONPATH:$PATH2PYTHON3"
export PYTHONPATH="$PYTHONPATH:$PWD/cameratraps:$PWD/ai4eutils"
echo $PYTHONPATH
PYVERSION=`python -V`
echo "python version: $PYVERSION"
PY3VERSION=`python3 -V`
echo "python3 version: $PY3VERSION"
export PATH="$PATH:/usr/bin/:$PATH2PYTHON3"
echo $PATH
python EcoAssist/EcoAssist_GUI.py