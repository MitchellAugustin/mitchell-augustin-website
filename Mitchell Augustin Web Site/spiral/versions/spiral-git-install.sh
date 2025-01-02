#Set up install directory
cd ~
mkdir spiral-install
cd spiral-install

#Download Spiral from git repository
git clone https://gitlab.com/MitchellAugustin/spiral-native
cmake spiral-native/
make
cd src

#Very basic script that 'installs' Spiral to your applications directory.
echo Spiral.desktop
echo "[Desktop Entry]" > Spiral.desktop
echo "Encoding=UTF-8" >> Spiral.desktop
echo "Version=Release" >> Spiral.desktop
echo "Type=Application" >> Spiral.desktop
echo "Terminal=false" >> Spiral.desktop
echo "Path=${PWD}"  >> Spiral.desktop
echo "Exec=env QT_QPA_PLATFORMTHEME=gtk2 '${PWD}/spiral'"  >> Spiral.desktop
echo "GenericName=Notebook" >> Spiral.desktop
echo "Name=Spiral" >> Spiral.desktop
cd ../spiral-native/
echo "Icon=${PWD}/logo.png" >> ../src/Spiral.desktop
mkdir ~/.local/share/applications
cp ../src/Spiral.desktop ~/.local/share/applications/Spiral.desktop
echo "Spiral has been installed to your home directory."
