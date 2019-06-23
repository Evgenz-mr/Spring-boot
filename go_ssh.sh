ssh root@192.168.145.164 -p 2222 << EOF
docker-compose -f /root/4/gradle/docker-compose.yml
sleep 5
exit
EOF
