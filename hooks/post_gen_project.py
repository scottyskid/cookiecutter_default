import os
from pathlib import Path


if __name__ == "__main__":
    BASE_DIR = Path(__file__).resolve().parent.parent
{%- if cookiecutter.project_type == 'python' %}
    os.remove(BASE_DIR / '{{ cookiecutter.project_slug }}' / '{{cookiecutter.project_file_name}}.R')
    os.remove(BASE_DIR / '{{ cookiecutter.project_slug }}' / 'globals.R')
{%- elif  cookiecutter.project_type == 'r' %}
    os.remove(BASE_DIR / '{{ cookiecutter.project_slug }}' / '{{cookiecutter.project_file_name}}.py')
    os.remove(BASE_DIR / '{{ cookiecutter.project_slug }}' / 'globals.py')
{%- endif %}
    print("running git init")
    os.system('git init')
    os.system('git add .')
    os.system('git commit -m "init commit"')

