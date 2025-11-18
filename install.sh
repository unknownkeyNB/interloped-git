pkg i sox -y
pkg clean
cp ./start.mp3 ~/
cp ./sourcebox.mp3 ~/
cp ./exit.mp3 ~/
clear
echo 'git() {' >> ~/.bashrc
echo 'play ~/start.mp3 -q' >> ~/.bashrc
echo 'if [ "$1" = "pull" ]; then' >> ~/.bashrc
echo 'play ~/sourcebox.mp3 -q &' >> ~/.bashrc
echo 'MUSIC_PID=$!' >> ~/.bashrc
echo 'command git pull "${@:2}"' >> ~/.bashrc
echo 'kill $MUSIC_PID' >> ~/.bashrc
echo 'play ~/exit.mp3 -q' >> ~/.bashrc
echo 'else' >> ~/.bashrc
echo 'command git "$@"' >> ~/.bashrc
echo 'play ~/exit.mp3 -q' >> ~/.bashrc
echo 'fi' >> ~/.bashrc
echo '}' >> ~/.bashrc
