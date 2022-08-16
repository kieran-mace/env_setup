# clone this folder

# install brew

# install karabinar and kmonad

/Applications/.Karabiner-VirtualHIDDevice-Manager.app/Contents/MacOS/Karabiner-VirtualHIDDevice-Manager activate
git clone --recursive https://github.com/kmonad/kmonad.git
brew install stack
stack install --flag kmonad:dext --extra-include-dirs=c_src/mac/Karabiner-DriverKit-VirtualHIDDevice/include/pqrs/karabiner/driverkit:c_src/mac/Karabiner-DriverKit-VirtualHIDDevice/src/Client/vendor/include
sudo ~/.local/bin/kmonad ~/Downloads/kieran.kbd