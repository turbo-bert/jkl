#!/bin/bash


IP=$(head -1 /app/data/ip)
DOM=$(head -1 /app/data/domain)
M=$(head -1 /app/data/mail)


tmux new-session -d -t bla
tmux send-keys -t bla bash Space ./port.sh C-m



echo "Checking for domain $DOM at $IP"
echo -en "Press RETURN..."
read





#set -x
#ssh -q -i /app/data/key -l root -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $IP uptime
#echo $?


certbot certonly -n --standalone --agree-tos -m "$M" -d $DOM

echo ""
echo ""

( cd /app/data && tar cvf etc.tar /etc/letsencrypt )

echo -en "Check your folders contents for etc.tar and press RETURN"
read
echo "Exiting..."
