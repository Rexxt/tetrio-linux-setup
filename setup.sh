# tetrio setup assistant

if [[ "$1" == "." ]]; then
    tiopath="$PWD"
else
    tiopath="$1"
fi

if [[ ! -e "$tiopath/tetrio-desktop" ]]; then
    echo "Could not find tetrio-desktop in '$tiopath'."
    exit 1
fi

cp "./icon.jpg" "$tiopath/icon.jpg"

touch "~/.local/share/applications/tetrio.desktop"
echo "[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=false
Exec=$tiopath/tetrio-desktop
Name=TETR.IO
Icon=$tiopath/icon.jpg" > "~/.local/share/applications/tetrio.desktop"