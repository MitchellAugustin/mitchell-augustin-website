#Very basic script that 'installs' Spiral to your applications directory.
echo Spiral.desktop
echo "[Desktop Entry]" > Spiral.desktop
echo "Encoding=UTF-8" >> Spiral.desktop
echo "Version=Release1.5" >> Spiral.desktop
echo "Type=Application" >> Spiral.desktop
echo "Terminal=false" >> Spiral.desktop
echo "Exec=env QT_QPA_PLATFORMTHEME=gtk2 '${PWD}/spiral'"  >> Spiral.desktop
echo "GenericName=Notebook" >> Spiral.desktop
echo "Name=Spiral" >> Spiral.desktop
echo "Icon=${PWD}/logo.png" >> Spiral.desktop
cp Spiral.desktop ${HOME}/.local/share/applications/Spiral.desktop
