# EZ-Share

Powershell module to quickly share a file or directory over a local network

## Platforms

Built for Windows, only tested on Windows 10.

## Getting Started

The following snippet is required to execute Powershell modules that aren't installed by the system.  Run as administrator.

``` Set-ExecutionPolicy RemoteSigned ```

The following will install the module:

``` $env:PSModulePath += ';Set-NetworkShare.psm1' ```