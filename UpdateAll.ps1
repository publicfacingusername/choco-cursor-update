# Remember location
Push-Location

# Change to script directory
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location $scriptPath

# Update packages
./ChatGPT/updateNew.ps1
./TumblThree/updateNew.ps1
./Cursor/updateNew.ps1
./NoFWL/updateNew.ps1
./vexcode/updateNew.ps1

# Return
Pop-Location