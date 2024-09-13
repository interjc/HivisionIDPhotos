#!/bin/bash

# 激活 pyenv 环境
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv activate hivision-id-photos

# 运行 app.py
python app.py
