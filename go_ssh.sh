ssh root@192.168.145.164 -p 2222 << EOF
docker-compose -f /root/4/gradle/docker-compose.yml up
sleep 5
exit
EOF
