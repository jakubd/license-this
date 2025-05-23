#!/bin/bash

# ---------------------------------------------------------------------------------
#  EDIT THE VARIABLES HERE TO EDIT LICENSE INFORMATION. DEFAULT is BSD-3-CLAUSE
# ---------------------------------------------------------------------------------

NAME="Jakub Dalek"
YEAR=$(date +%Y)

FULL_LICENSE="Copyright $YEAR $NAME

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
OF THE POSSIBILITY OF SUCH DAMAGE."

SHORT_LICENSE="# License

[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)"

# ---------------------------------------------------------------------------------

function add_license {
    if [ ! -f LICENSE ]; then
        echo "$FULL_LICENSE" > LICENSE
        echo "Added full license to LICENSE file here"
    else
        echo "This folder already has a LICENSE file!"
        read -p "Replace current LICENSE file? [y/n] " replaceyesno
        case $replaceyesno in
            [Yy]*) 
                echo "ok replacing"
                echo "$FULL_LICENSE" > LICENSE
            ;;
            *) echo "OK, not replacing"
        esac
    fi
}

function add_short_license {
    if [ ! -f README.md ]; then
        
        read -p "Add a README.md with short license? [y/n] " addyesno
        case $addyesno in
            [Yy]*)
                echo "OK appending short license"
                echo "$SHORT_LICENSE" >> README.md
            ;;
            *)  
                echo "Ok not appending"
        esac
 
    else
        echo "This folder already has a README.md!"

        read -p "Do you wish to wish to add short license to this README.md? [y/n] " appendyesno
        case $appendyesno in
            [Yy]* ) 
                echo "Ok, Adding"
                echo "$SHORT_LICENSE" >> README.md
                exit
            ;;
            * ) echo "OK, Not adding "
                exit
        esac
    fi
}

# ---------------------------------------------------------------------------------

add_license
add_short_license