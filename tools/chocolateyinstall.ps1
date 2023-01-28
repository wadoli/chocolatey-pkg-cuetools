$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'cuetools*'
  fileType      = 'zip'
  silentArgs    = "/S"
  validExitCodes= @(0) #please insert other valid exit codes here
  url           = "https://github.com/gchudov/cuetools.net/releases/download/v2.2.3/CUETools_2.2.3.zip"  #download URL, HTTPS preferrred
  checksum      = '017484aab76040737713a9a638eb696db63df0a5f792973744b36a41bd60fb98'
  checksumType  = 'sha256'
  destination   = $toolsDir
}

Install-ChocolateyZipPackage @packageArgs

## See https://docs.chocolatey.org/en-us/create/functions/