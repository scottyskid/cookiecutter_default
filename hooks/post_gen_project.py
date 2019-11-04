import os
from pathlib import Path
import sys


if __name__ == "__main__":
    # print(os.getcwd())
    SRC_DIR = Path('src')
{%- if cookiecutter.project_type == 'python' %}
    os.remove(SRC_DIR / '{{cookiecutter.project_file_name}}.R')
    os.remove(SRC_DIR / 'globals.R')
{%- elif  cookiecutter.project_type == 'r' %}
    os.remove(SRC_DIR / '{{cookiecutter.project_file_name}}.py')
    os.remove(SRC_DIR / 'globals.py')
{%- endif %}
    print("running git init")
    os.system('git init')
    os.system('git add .')
    os.system('git commit -m "init commit"')

