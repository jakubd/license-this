# ---------------------------------------------------------------------------------
#  EDIT THE VARIABLES HERE TO EDIT LICENSE INFORMATION. DEFAULT is BSD-3-CLAUSE
# ---------------------------------------------------------------------------------

$NAME = "Jakub Dalek" 
$YEAR = (Get-Date).Year

$FULL_LICENSE = @"
Copyright $YEAR $NAME

Redistribution and use in source and binary forms, with or without modification, 
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, 
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, 
this list of conditions and the following disclaimer in the documentation and/or 
other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors 
may be used to endorse or promote products derived from this software without 
specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND 
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, 
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE 
OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
OF THE POSSIBILITY OF SUCH DAMAGE.
"@

$SHORT_LICENSE = @"

# License

[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)"
"@

# ---------------------------------------------------------------------------------

if (Test-Path LICENSE) {
    Write-Output "LICENSE file already exists in this directory! Skipping"
    $askoverwrite = Read-Host "Do you want to replace LICENSE file? [y/n] "
    if ($askoverwrite -eq 'Y' -or $askoverwrite -eq 'y') {
        Set-Content -Path LICENSE -Value $FULL_LICENSE
    } else {
        Write-Output "Ok skipping."
    }
} else {
    Write-Output "LICENSE file does not exist in this directory, adding"
    Set-Content -Path LICENSE -Value $FULL_LICENSE
}

if (Test-Path README.md) {
    Write-Output "README.md file already exists in this directory!"

    $response = Read-Host "Do you want to add license info to end of README? (y/n) "
    if ($response -eq 'Y' -or $response -eq 'y') {
        Add-Content -Path README.md -Value $SHORT_LICENSE
        Write-Output "OK Added."
    } else {
        Write-Output "OK Skipping."
    }

} else {
    $asknewreadme = Read-Host "Do you want to add a README.md file with short license info? [y/n] "
    if ($asknewreadme -eq 'Y' -or $asknewreadme -eq 'y') {
        Set-Content -Path README.md -Value $SHORT_LICENSE
        Write-Output "Added short license to new README.md file"
    } else {
        Write-Output "Ok skipping"
    }
}

