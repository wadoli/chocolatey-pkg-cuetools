$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'cuetools*'
  fileType      = 'zip'
  silentArgs    = "/S"
  validExitCodes= @(0) #please insert other valid exit codes here
  url           = "https://github.com/gchudov/cuetools.net/releases/download/v2.2.2/CUETools_2.2.2.zip"  #download URL, HTTPS preferrred
  checksum      = 'b56914afc067a7937d8c905f0910f252d18d6bd8172a0a733314a318fa208aa9'
  checksumType  = 'sha256'
  destination   = $toolsDir
}

Install-ChocolateyZipPackage @packageArgs

## See https://docs.chocolatey.org/en-us/create/functions/

