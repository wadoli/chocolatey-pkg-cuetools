$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'cuetools*'
  fileType      = 'zip'
  silentArgs    = "/S"
  validExitCodes= @(0) #please insert other valid exit codes here
  url           = "https://github.com/gchudov/cuetools.net/releases/download/v2.2.4/CUETools_2.2.4.zip"  #download URL, HTTPS preferrred
  checksum      = 'e7a1906b0edd247435aabcd56e4c0ff1076edf9b773951ac73dd9725816778ff'
  checksumType  = 'sha256'
  destination   = $toolsDir
}

Install-ChocolateyZipPackage @packageArgs

## See https://docs.chocolatey.org/en-us/create/functions/