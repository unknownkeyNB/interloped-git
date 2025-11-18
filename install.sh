pkg i sox -y
pkg clean
cp ./start.mp3 ~/
cp ./sourcebox.mp3 ~/
cp ./exit.mp3 ~/
clear
echo 'git() {'
echo 'play ~/start.mp3 -q'
echo 'if [ "$1" = "pull" ]; then'
echo 'play ~/sourcebox.mp3 -q &'
echo 'MUSIC_PID=$!'
echo 'command git pull "${@:2}"
echo 'play ~/exit.mp3 -q'
echo 'else'
echo 'command git "$@"
echo 'play ~/exit.mp3 -q'
echo 'fi'
echo '}'