# up to you (me) if you want to run this as a file or copy paste at your leisure


# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby

# homebrew!
# you need the code CLI tools YOU FOOL.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Tap the keg and get all necessary files
[ -r "~/aesinvDotfiles/tap-keg.sh" ] && source "~/aesinvDotfiles/tap-keg.sh"

# google machines are funny so i have to do this. everyone else should use the regular thang
# mkdir $HOME/.homebrew && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $HOME/.homebrew
# export PATH=$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH

# Install rad npm stuff
npm install -g nave

# Task runners and generators
npm install -g grunt-cli gulp yo iron-fe

# Project Tools
npm install -g bower webpack browserify browser-sync

# JS!
npm install -g babel babel-core babel-loader babel-plugin-react-transform # hopefully fix stupid loading issues with react native

# React Native
npm install -g react-native react-native-cli react-tools

# Prevent issues with Sass
npm install -g node-sass gulp-sass


# https://github.com/rupa/z
# z, oh how i love you
cd ~/code
git clone https://github.com/rupa/z.git
chmod +x ~/code/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile


# https://github.com/thebitguru/play-button-itunes-patch
# disable itunes opening on media keys
cd ~/code
git clone https://github.com/thebitguru/play-button-itunes-patch


# my magic photobooth symlink -> dropbox. I love it.
## first move Photo Booth folder out of Pictures
## then start Photo Booth. It'll ask where to put the library.
## put it in Dropbox/public

# now you can record photobooth videos quickly and they upload to dropbox DURING RECORDING
# then you grab public URL and send off your video message in a heartbeat.


# for the c alias (syntax highlighted cat)
sudo easy_install Pygments


# chrome canary as default
# on a mac you can set chrome canary as your default inside of Safari preferences :)

# install Cairo so we can install Canvas
# https://github.com/Automattic/node-canvas/wiki/Installation---OSX
# Pixman first
cd ~/code
curl http://www.cairographics.org/releases/pixman-0.22.0.tar.gz -o pixman.tar.gz
tar -zxf pixman.tar.gz && cd pixman-0.22.0/
./configure --prefix=/usr/local --disable-dependency-tracking
make install

# now Cairo
cd ~/code
curl http://cairographics.org/releases/cairo-1.12.8.tar.xz -o cairo.tar.xz
tar -zxf cairo.tar.xz && cd cairo-1.12.8
./configure --prefix=/usr/local --disable-dependency-tracking
make install

## INSTALL Xcode then Node-Canvas!

# Install LimeChat Themes
rm -rf "~/Library/Application Support/LimeChat/Themes"
ln -s ~/aesinvDotfiles/LimeChatConfig/Themes "/Users/mbengston/Library/Application Support/LimeChat"
