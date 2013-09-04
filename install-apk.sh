~/sdk/platform-tools/adb install -r $@;
pkg=$(~/sdk/build-tools/17.0.0/aapt dump badging $@|awk -F" " '/package/ {print $2}'|awk -F"'" '/name=/ {print $2}')
act=$(~/sdk/build-tools/17.0.0/aapt dump badging $@|awk -F" " '/launchable-activity/ {print $2}'|awk -F"'" '/name=/ {print $2}')
~/sdk/platform-tools/adb shell am start -n $pkg/$act
