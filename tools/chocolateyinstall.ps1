$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

#Based on NO DETECTION IN PRO
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'cuetools*'
  fileType      = 'zip'
  url           = "https://github.com/gchudov/cuetools.net/releases/download/v2.1.9/CUETools_2.1.9.zip"  #download URL, HTTPS preferrred
  checksum      = '28B065547D779CFCA1CF33F9548C3AACCBA6BF2BAC3F973FEBA789088D2A6CCE'
  checksumType  = 'sha256'
  destination   = $toolsDir
  specificFolder= 'CUETools_2.1.9'
}

Install-ChocolateyZipPackage @packageArgs

## See https://chocolatey.org/docs/helpers-reference