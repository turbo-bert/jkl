#!/bin/bash


IP=$(head -1 /app/data/ip)
DOM=$(head -1 /app/data/domain)

while true; do
ssh -v -R ":80:127.0.0.1:80" -t -q -i /app/data/key -l root -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $IP "echo connected; read"
sleep 1
done
