@echo off
REM Creates venv (if missing), activates it, installs requirements and runs the Streamlit app
if not exist .venv (
  python -m venv .venv
)
call .venv\Scripts\activate.bat
python -m pip install --upgrade pip
if exist requirements.txt (
  pip install -r requirements.txt
) else (
  pip install streamlit
)
streamlit run ra_app.py %*
