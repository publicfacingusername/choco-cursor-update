$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://windsurf-stable.codeiumdata.com/win32-x64-user/stable/164066c0badcfdea724847b1a24fd88eb96f9510/WindsurfUserSetup-x64-1.5.6.exe' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Windsurf*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  checksum      = '7CB5A20E5D8C5F2277A3DC8AE9A8AC793A2713B9F879EFD2F3D80CABDB30BDC1'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  silentArgs    = "/VERYSILENT" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs # https://docs.chocolatey.org/en-us/create/functions/install-chocolateypackage
