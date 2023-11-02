# Name of the installer
Outfile "Win0zXP-v0.0.1.exe"

# Default section
Section

# Output directory and files to include
SetOutPath $INSTDIR
File /r "dist\*"

SectionEnd
