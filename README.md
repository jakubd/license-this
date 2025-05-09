# License This!

Simple cross platform shell script that can add license information to the current 
directory with a:

Mac/Linux:
```
./license-this.sh
```

or 

Windows:
```
license-this.ps1
```

Creates a `LICENSE` file in the current directory, if one does not exist. Will also
create a `README.md` with short license information if one does not exist.  If one does
it will prompt you to add short license info at end of file.  This short information will
include a `shields.io` badge see: https://gist.github.com/lukas-h/2a5d00690736b4c3a7ba 

## Usage

Add the license-this script (either ps1 for windows or sh for linux/mac) into your
environment path.

Set your license information by editing the script variables at the top of the script.

To add new licenses see `license-gallery.sh` for some sample permissive licenses
or select an OSI approved license from: https://opensource.org/licenses and its 
corresponding badge from https://gist.github.com/lukas-h/2a5d00690736b4c3a7ba  

# License

[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)