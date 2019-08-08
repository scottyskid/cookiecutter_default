#!/usr/bin/env python

"""{{cookiecutter.project_short_description}}

Docstring long description
"""
import configparser
import logging, logging.config
import os
from pathlib import Path
import sys
import time

import numpy as np
import pandas as pd
from pprint import pprint
import requests
import yaml

import constants

__author__ = "{{cookiecutter.full_name}}"
__created__ = "{{cookiecutter.date}}"
__copyright__ = "Copyright 2019, CHE Proximity"
__credits__ = ["{{cookiecutter.full_name}}"]

__license__ = "{{cookiecutter.open_source_license}}"
__version__ = "{{cookiecutter.version}}"
__maintainer__ = "{{cookiecutter.full_name}}"
__email__ = "{{cookiecutter.email}}"
__status__ = "Development" # "Development", "Prototype", or "Production"


def setup_logging(default_path, default_level=logging.WARNING, env_key='LOG_CFG'):
    """Setup logging configuration

    """
    path = default_path
    value = os.getenv(env_key, None)
    if value:
        path = value
    if path.exists():
        with open(path, 'rt') as f:
            config = yaml.safe_load(f.read())
        logging.config.dictConfig(config)
    else:
        logging.basicConfig(level=default_level)
        logging.warning('logging.yaml not imported')


def main():
    pass


if __name__ == "__main__":
    script_start = time.time()
    try:
        setup_logging(constants.BASE_DIR / 'logging_config.yaml', logging.DEBUG)
        logging.info("__main__ start")

        main()

        logging.info("__main__ end successfully")
    except Exception as e:
        logging.error("__main__ end with error")
        raise
    finally:
        print(f"the script took {time.time() - script_start}s to complete")