## WHAT
Kali Linux base image ([Kali-linux](https://www.kali.org/news/kali-linux-metapackages/) metapackage) with metasploit and metasploit-framework installed and all of the metasploit modules removed.

## HOW

### BUILD IT YOURSELF
Clone this repo, use docker to create the image:
```
git clone https://github.com/madsec/docker_tha-kali-msf-micro.git
cd /docker_tha-kali-msf-micro
docker build -t tha-kali-msf-micro .
```

Test it:
`docker run -t -i  --name testy --rm tha-kali-msf-micro`

### USE OURS
`docker run -t -i  --name testy --rm blackfinsecurity/tha-kali-msf-micro`

## BONUS 
Launch a Docker/Kali testing environment with our script. This will launch Kali and a linked Ubuntu container that can be used as your target.

Clone this repo, use our script to launch it
```
git clone https://github.com/madsec/docker_tha-kali-msf-micro.git
cd /docker_tha-kali-msf
chmod +x launch.sh
./launch.sh
```