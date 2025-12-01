param(
    [string]$Port = "8501"
)

$ErrorActionPreference = "Stop"

$venv = ".\.venv"
if (-not (Test-Path $venv)) {
    Write-Host "Creating virtual environment..."
    python -m venv $venv
}

Write-Host "Activating virtual environment..."
. "$venv\Scripts\Activate.ps1"

Write-Host "Upgrading pip..."
python -m pip install --upgrade pip

if (Test-Path ".\requirements.txt") {
    Write-Host "Installing requirements from requirements.txt..."
    pip install -r requirements.txt
} else {
    Write-Host "Installing streamlit..."
    pip install streamlit
}

Write-Host "Starting Streamlit app on port $Port..."
streamlit run ra_app.py --server.port $Port
