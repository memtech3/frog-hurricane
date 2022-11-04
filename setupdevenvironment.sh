# If you are having trouble running this file try running 'chomd +x setupdevenvironment.sh'

cd ../
echo "Cloning frog-hurricane-skeleton"
git clone https://github.com/memtech3/frog-hurricane-skeleton
gravZipName=grav-admin-1.7.37.1.zip
echo "Downloading grav, saving as $gravZipName"
wget https://getgrav.org/download/core/grav-admin/1.7.37.1 -O $gravZipName
echo "Unzipping grav"
unzip $gravZipName

echo "Installing php, npm and required php extensions"
sudo apt install php 
sudo apt update && upgrade
sudo apt install php-curl php-dom php-gd php-xml php-zip php-mbstring
sudo apt install npm


currentPath=$(realpath ".")
gravPath="$currentPath/grav-admin"
skeletonPath="$currentPath/frog-hurricane-skeleton"

symlinkSkeletonFolder () {
    echo "Symlinking user/$1" 
    rm -rf $gravPath/user/$1
    ln -s $skeletonPath/$1 $gravPath/user/
}

symlinkSkeletonFolder "accounts"
symlinkSkeletonFolder "config"
symlinkSkeletonFolder "pages"
symlinkSkeletonFolder "plugins"

echo "Symlinking theme" 
ln -s $currentPath/frog-hurricane $gravPath/user/themes

echo "Installing npm dependencies"
cd frog-hurricane
npm install

echo "Making startdevserver.sh executable"
chmod +x startdevserver.sh