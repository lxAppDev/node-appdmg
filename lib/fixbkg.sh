echo '
   tell application "Finder"
     tell disk "'$1'"
           open
           set toolbar visible of container window to false
           set statusbar visible of container window to false
           set the bounds of container window to {0, 0, '$2', '$3'}
           set theViewOptions to the icon view options of container window
           set arrangement of theViewOptions to not arranged
           set icon size of theViewOptions to '$4'
           set background picture of theViewOptions to file ".background:'$5'"
           set position of item "'$6'" of container window to {'$7', '$8'}
           set position of item "'$9'" of container window to {'${10}', '${11}'}
           update without registering applications
           delay 5
           close
     end tell
   end tell
' | osascript