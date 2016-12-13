echo '
   tell application "Finder"
     tell disk "'$1'"
           open
           set toolbar visible of container window to false
           set statusbar visible of container window to false
           set the bounds of container window to {'$2', '$3', '$4', '$5'}
           set theViewOptions to the icon view options of container window
           set arrangement of theViewOptions to not arranged
           set icon size of theViewOptions to '$6'
           set background picture of theViewOptions to file ".background:'$7'"
           set position of item "'$8'" of container window to {'$9', '${10}'}
           set position of item "'${11}'" of container window to {'${12}', '${13}'}
           update without registering applications
           delay 5
           close
     end tell
   end tell
' | osascript
