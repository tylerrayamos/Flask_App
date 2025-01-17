@echo off
title Flask App Controller
echo Starting Flask App. This may take a moment to load...
set "dir=C:/Users/614183/AppData/Local/anaconda3/envs/env_flask_1"
echo Checking to see if all necessary dependencies exist...
IF exist %dir%\ (
    echo ACTIVATING ENVIRONMENT
    call conda activate env_flask_app
) else (
    echo ENVIRONMENT DOES NOT EXIST. CREATING ENVIRONMENT NOW...
    call "C:/projects/Flask_app/setup_env.bat"
)
cd "C:/projects/Flask_app"
call python -m cli.py
pause