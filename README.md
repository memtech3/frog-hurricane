# frog-hurricane
A lightweight and versatile theme for Grav CMS, built with Bulma CSS

## Developing On Linux
Run setupdevenvironment.sh to quickly set up a development environment. This script does the following:
### Installs
- PHP
- PHP extensions required by Grav
- npm (nodeJS)
- nodeJS project dependencies (runs npm install)
### Other Stuff
- Runs sudo apt update&&upgrade while installing php stuff
- Downloads and unzips a copy of Grav (with admin panel) in `../grav-admin` (creates a `grav-admin` folder in the parent directory of the folder that this repository was cloned into), does not delete the downloaded zip file
- Clones the `frog-hurricane-skeleton` repository (sample content and configuration for Grav) into `../frog-hurricane-skeleton` (creates a `frog-hurricane-skeleton` folder in the parent directory of the folder that this repository was cloned into)
- Symlinks theme (this repository's folder) and some of the `frog-hurricane-skeleton` folders into appropriate folders in `grav-admin` (allows Grav to use our theme, content, and config)

### Starting The Grav Dev Server
If you used `setupdevenvironment.sh` to setup your dev environment you can use `startdevserver.sh` to start the Grav dev server. This script just runs `bin/grav server` from the `grav-admin` directory.