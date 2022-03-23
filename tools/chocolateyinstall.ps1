$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = ''

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'cuetools*'
  fileType      = 'zip'
  silentArgs    = "/S"
  validExitCodes= @(0) #please insert other valid exit codes here
  url           = "https://github.com/gchudov/cuetools.net/releases/download/v2.2.1/CUETools_2.2.1.zip"  #download URL, HTTPS preferrred
  checksum      = 'c95051bc1d01639aa9d8a7072b61f71ac3c73f07fab244c33b4aff48d0c640a3'
  checksumType  = 'sha256'
  destination   = $toolsDir
}

Install-ChocolateyZipPackage @packageArgs

## See https://docs.chocolatey.org/en-us/create/functions/

