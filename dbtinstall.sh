#!/bin/bash

apt-get install -y python3.12-venv

curl -LsSf https://astral.sh/uv/install.sh | sh

export PATH=$PATH:/root/.local/bin

uv venv dbtpractice

echo "alias cls='clear'" >>.bashrc

source .bashrc

source dbtpractice/bin/activate

uv pip install dbt-core dbt-snowflake
