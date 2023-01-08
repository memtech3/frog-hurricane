# frog-hurricane
A lightweight and versatile theme for Grav CMS, built with Bulma CSS
## frog-hurricane-skeleton
[frog-hurricane-skeleton](https://github.com/memtech3/frog-hurricane-skeleton) is a repository with sample content and configuration files to help with development.
## Developing On Linux
Run `setupdevenvironmentUbuntu.sh` on Ubuntu or `setupdevenvironmentFedora.sh` on Fedora to quickly set up a development environment. This script does the following:
#### Installs
- PHP
- PHP extensions required by Grav
- npm (nodeJS)
- nodeJS project dependencies (runs npm install)
#### Other Stuff
- Runs sudo apt update&&upgrade while installing php stuff
- Downloads and unzips a copy of Grav (with admin panel) in `../grav-admin` (creates a `grav-admin` folder in the parent directory of the folder that this repository was cloned into), does not delete the downloaded zip file
- Clones the `frog-hurricane-skeleton` repository (sample content and configuration for Grav) into `../frog-hurricane-skeleton` (creates a `frog-hurricane-skeleton` folder in the parent directory of the folder that this repository was cloned into)
- Symlinks theme (this repository's folder) and some of the `frog-hurricane-skeleton` folders into appropriate folders in `grav-admin` (allows Grav to use our theme, content, and config)

### Starting The Grav Dev Server
If you used `setupdevenvironment<DISTRO_NAME>.sh` to setup your dev environment you can use `startdevserver.sh` to start the Grav dev server. This script just runs `bin/grav server` from the `grav-admin` directory.

### Compiling SASS
This project uses SASS to compile bulma and bulma customizations to CSS. To compile SASS to CSS, run `npm run build` from your `frog-hurricane` directory. To have SASS watch files for changes and automatically compile any changes to CSS, run `npm run watch` from your `frog-hurricane`

### frog-hurricane-skeleton Admin Credentials
For convenience `frog-hurricane-skeleton` is configured with an admin accoutn with the following credentials:
- Username: admin
- Password: Admin1234!

### DO NOT USE `frog-hurricane-skeleton` or `setupdevenvironment.sh` IN A PRODUCTION ENVIRONMENT
**This notice only applies to configuration files in the `frog-hurricane-skeleton` repository and the `setupdevenvironment.sh` script, this notice does not apply to the rest of the theme (`frog-hurricane`, this repository)**

Security, caching, and other potentially critical settings have been configured in the best interest of developer convenience, NOT security and production best practices. 

In the future this may change, at which point this notice will be removed.
