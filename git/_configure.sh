#!/bin/bash

# Compose email from parts to avoid spam
email_part_1="fcanela"
email_domain="gmail"
email_part_2="dev"
email_tld="com"
email="${email_part_1}.${email_part_2}@${email_domain}.${email_tld}"


echo "[+] Apply git configuration, making a backup of the existing one"
mv ${HOME}/.gitconfig ${HOME}/.gitconfig.bak 2> /dev/null 
cat > ~/.gitconfig <<EOL
[user]
        email = ${email} 
        name = Francisco Canela
EOL
