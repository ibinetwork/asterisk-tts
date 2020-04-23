#!/bin/bash
clear

yum install cowsay -y
clear
echo ""
cowsay "INSTALANDO DEPENDENCIAS"

yum install perl-libwww-perl perl-IO-Socket-SSL perl-LWP-Protocol-https mpg123 git -y

cowsay "INSTALANDO WATSON E GOOGLE TTS"

cd /usr/src/
git clone https://github.com/ibinetwork/asterisk-tts.git
cp asterisk-tts/agi-bin/*.php /var/lib/asterisk/agi-bin
mkdir /var/lib/asterisk/sounds/tts/
chown -Rf asterisk.asterisk /var/lib/asterisk/sounds/tts/
amportal chown
