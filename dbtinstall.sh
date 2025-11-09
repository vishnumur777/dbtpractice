#!/bin/bash

curl -LsSf https://astral.sh/uv/install.sh | sh

apt-get install python3.12-venv

uv venv dbtpractice

echo "alias cls='clear'" >>.bashrc

source .bashrc

source dbtpractice/bin/activate

uv pip install dbt-core dbt-snowflake
