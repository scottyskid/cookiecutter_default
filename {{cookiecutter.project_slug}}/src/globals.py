"""
This is a doc that contants constants that are used across python variables

This file should not need to be edited regularly

For configuration constants, edit either the project_settings.config or user_settings.config file
both of which this config file then imports
"""

import configparser
import os
from pathlib import Path


BASE_DIR = Path(__file__).resolve().parent.parent
DATA_EXTRACT_PATH =  BASE_DIR / 'data_extract'
DATA_LOAD_PATH = BASE_DIR / 'data_load'
DATA_TRANSFORM_PATH = BASE_DIR / 'data_transform'
LOGS_PATH = BASE_DIR / 'logs'

PROJECT_CONFIG = configparser.ConfigParser()
PROJECT_CONFIG.read(BASE_DIR / 'project_settings.config')

USER_CONFIG = configparser.ConfigParser()

if os.name =='nt': # windows correct file path
    BASE_OS_DIR = Path(os.environ['USERPROFILE'])
else: # linux correct file path
    BASE_OS_DIR = Path('~')

USER_CONFIG.read(BASE_OS_DIR / 'user_settings.config')