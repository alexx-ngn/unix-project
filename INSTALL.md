# Installation steps
This document gives the instructions required to setup the project.

## Installing Dependencies
Install the following packages.
- p7zip-full
- xorriso
- isolinux
```
sudo apt install p7zip-full xorriso isolinux
```

## Running the script
Download the Debian ISO and run the script.
```
bash gen.sh $PATH_TO_DEBIAN_ISO
```

## Booting the iso
Boot the iso in a virtual machine or on bare metal.
