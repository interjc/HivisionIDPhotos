#!/bin/bash

# Check if pyenv is installed
if ! command -v pyenv &> /dev/null
then
    echo "pyenv is not installed. Please install pyenv first."
    exit 1
fi

# Create a new Python 3.10 environment
pyenv install 3.10.0
pyenv virtualenv 3.10.0 hivision-id-photos
pyenv local hivision-id-photos

# Activate the environment
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv activate hivision-id-photos

# Install requirements
pip install -r requirements.txt
pip install -r requirements-app.txt

# Downloads scripts
python scripts/download_model.py --models all

echo "Environment setup complete."
