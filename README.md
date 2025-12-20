# jorgedfr.github.io

Personal webpage of Jorge Diogo Ribeiro.

## Setup

### GitHub Repository

```sh
mkdir ~/jorgedfr_ws/src -p
cd ~/jorgedfr_ws/src
git clone git@github.com:JorgeDFR/jorgedfr.github.io.git
```

### Material for MkDocs

```sh
sudo apt install python3-venv

mkdir -p ~/.venvs
python3 -m venv ~/.venvs/mkdocs
source ~/.venvs/mkdocs/bin/activate

pip install mkdocs-material
```

## Run

```sh
cd ~/jorgedfr_ws/src/jorgedfr.github.io/

mkdocs serve -a <localhost IP 127.0.0.1>:<PORT>
# e.g., mkdocs serve -a 127.0.0.1:10000
```