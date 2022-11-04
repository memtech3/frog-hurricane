# frog-hurricane
A lightweight and versatile theme for Grav CMS, built with Tailwind CSS

## Developing on Linux
Run setupdevenvironment.sh to quickly set up a development environment. This script does the following:
### Installs
- PHP
- PHP extensions required by Grav
- npm (nodeJS)
- nodeJS project dependencies (runs npm install)
### Other Stuff
- Runs sudo apt update&&upgrade while installing php stuff
- Downloads and unzips copy of Grav (with admin panel) in ../ (parent directory of this directory), does not delete the downloaded zip file
- Clones the frog-hurricane-skeleton repository (sample content and configuration for Grav)
- Symlinks theme and some of the frog-hurricane-skeleton folders into folders in grav-admin (allows grav to use our theme, content, and config)

### Starting Grav Dev Server
If you used setupdevenvironment.sh to setup your dev environment you can use startdevserver.sh to start the Grav dev server