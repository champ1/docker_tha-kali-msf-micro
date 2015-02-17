#! /bin/bash 

ID=$(cat /dev/urandom | tr -cd 'a-f0-9' | head -c 32)

UBU=$(docker run -i -d --net=none --name ubu$ID blackfinsecurity/tha-ubu)
KALI=$(docker run -i -t -d --net=none --link ubu$ID:ubu$ID --name kali$ID blackfinsecurity/tha-kali-msf-micro)

echo 'Starting target'
sudo pipework br0 $UBU 172.16.189.52/24
echo 'Starting Kali'
sudo pipework br0 $KALI 172.16.189.5/24
echo 'Starting Metasploit'
docker attach $KALI