# Robo_Advisor (Streamlit app)

Quick helper files to set up and run the app locally on Windows.

Prerequisites
- Python 3.8+ installed and on your PATH.
- Optional: Run PowerShell as Administrator if you need to change execution policy.

Files added
- `requirements.txt` — lists `streamlit` and `plotly` (compatible version). Update pins as needed.
- `run.ps1` — PowerShell script that creates a `.venv`, activates it, installs dependencies and runs the app.
- `run.bat` — Windows batch equivalent to `run.ps1` (useful if you cannot run PS scripts).

Usage

PowerShell (recommended):
```powershell
# From the project root
.\





















- Create a Git pre-commit or a VS Code launch configuration to run the script.- Pin exact versions in `requirements.txt` for reproducible installs.If you want, I can also:- If you prefer to use Anaconda/conda, create a conda env and install `streamlit` there instead.- `run.ps1` installs from `requirements.txt` if present; otherwise it installs `streamlit`.Notes```run.bat```cmdCommand prompt (CMD):```Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned```powershellIf you get an execution policy error when running `run.ps1`, run this in an elevated PowerShell or as your user:```.\
un.ps1 -Port 8502 # run on port 8502un.ps1            # runs on default port 8501