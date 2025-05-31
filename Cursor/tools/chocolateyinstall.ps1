$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'exe'
  url            = 'https://downloads.cursor.com/production/adaabf32700c570904618df5bd7166988f3d079b/win32/x64/system-setup/CursorSetup-x64-0.51.0.exe'
  softwareName   = 'Cursor*'
  checksum       = '0CB4F48FCE0CE1A190956115923AEC5FE45C6B7DF10E71C6E65EFCAF25146DB9'
  checksumType   = 'sha256'
  
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
