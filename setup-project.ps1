# Fail on error
$ErrorActionPreference = "Stop"

# Name of the virtual environment directory
$VENV_DIR = ".venv"

Write-Host "Creating virtual environment in $VENV_DIR..."
python -m venv $VENV_DIR

Write-Host "Activating virtual environment..."
# PowerShell activation
& "$VENV_DIR\Scripts\Activate.ps1"

Write-Host "Upgrading pip..."
python -m pip install --upgrade pip

Write-Host "Installing requirements..."
python -m pip install -r requirements.txt

# Optionally update requirements.txt
# python -m pip freeze > requirements.txt

Write-Host "Done! Virtual environment is set up and ready."
Write-Host "To activate it later in PowerShell: & `$VENV_DIR\Scripts\Activate.ps1`"
