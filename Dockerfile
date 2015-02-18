# Docker registry repo/image used as our base
FROM blackfinsecurity/tha-kali-msf

# Who is responsible for this madness?
MAINTAINER ctarwater@blackfinsecurity.com

USER root
# Strip out unused Metasploit modules
RUN rm -rf /usr/share/metasploit-framework/modules/*

# Issue remaining commands as new user
USER thastudent

# Issue commands from this directory
WORKDIR /home/thastudent

# We need to run multiple commands to get the msf running, so we put them into a single script
CMD ["/init.sh"]