echo "Select language for The Sims 2:"
echo "1)  Brazilian Portuguese"
echo "2)  Czech"
echo "3)  Danish"
echo "4)  Dutch"
echo "5)  English"
echo "6)  Finnish"
echo "7)  French"
echo "8)  German"
echo "9)  Greek"
echo "10) Hebrew"
echo "11) Hungarian"
echo "12) Italian"
echo "13) Japanese"
echo "14) Korean"
echo "15) Norwegian"
echo "16) Polish"
echo "17) Portuguese"
echo "18) Russian"
echo "19) Simplified Chinese"
echo "20) Spanish"
echo "21) Swedish"
echo "22) Thai"
echo "23) Traditional Chinese"
echo "24) Turkish"
echo "25) UK English"
echo ""
read -p "Please, enter a number (1-25): " choice

case $choice in
    1)  LANGUAGE="Brazilian Portuguese";;
    2)  LANGUAGE="Czech";;
    3)  LANGUAGE="Danish";;
    4)  LANGUAGE="Dutch";;
    5)  LANGUAGE="English";;
    6)  LANGUAGE="Finnish";;
    7)  LANGUAGE="French";;
    8)  LANGUAGE="German";;
    9)  LANGUAGE="Greek";;
    10) LANGUAGE="Hebrew";;
    11) LANGUAGE="Hungarian";;
    12) LANGUAGE="Italian";;
    13) LANGUAGE="Japanese";;
    14) LANGUAGE="Korean";;
    15) LANGUAGE="Norwegian";;
    16) LANGUAGE="Polish";;
    17) LANGUAGE="Portuguese";;
    18) LANGUAGE="Russian";;
    19) LANGUAGE="Simplified Chinese";;
    20) LANGUAGE="Spanish";;
    21) LANGUAGE="Swedish";;
    22) LANGUAGE="Thai";;
    23) LANGUAGE="Traditional Chinese";;
    24) LANGUAGE="Turkish";;
    25) LANGUAGE="UK English";;
    *) echo "Invalid choice!"; exit 1;;
esac

APP_NAME="The Sims 2 - Super Collection ($LANGUAGE).app"
HOSTNAME=$(hostname)

# Remove existing app file.
[ -d "$APP_NAME" ] && rm -rf "$APP_NAME"

mkdir "$APP_NAME"
cd "$APP_NAME"

mkdir Contents
cd Contents

# Create .plist file.
cat <<EOT > Info.plist
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
    "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>CFBundleExecutable</key>
	<string>launcher</string>
	<key>CFBundleIdentifier</key>
	<string>com.$HOSTNAME.sims2</string>
	<key>CFBundleName</key>
    <string>The Sims 2 - Super Collection ($LANGUAGE)</string>
	<key>CFBundleDisplayName</key>
    <string>The Sims 2 - Super Collection ($LANGUAGE)</string>
	<key>CFBundleVersion</key>
	<string>1.0</string>
	<key>CFBundleShortVersionString</key>
	<string>1.0</string>
	<key>CFBundlePackageType</key>
	<string>APPL</string>
	<key>NSHighResolutionCapable</key>
	<true />
	<key>CFBundleIconFile</key>
	<string>AppIcon</string>
	<key>NSRequiresAquaSystemAppearance</key>
	<false />
	<key>LSApplicationCategoryType</key>
	<string>public.app-category.games</string>
    </dict>
</plist>
EOT

mkdir MacOS
mkdir Resources

cd MacOS

# Create launcher executable.
cat <<EOT > launcher
#!/bin/bash
arch -x86_64 open "/Applications/The Sims 2.app" --args -l:$LANGUAGE
EOT

# Make the launcher executable.
chmod +x ./launcher

cd ../Resources
cp "/Applications/The Sims 2.app/Contents/Resources/Sims2.icns" ./AppIcon.icns 2>/dev/null || true
