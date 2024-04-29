FROM debian

RUN mkdir /run/sshd
RUN useradd -ms /bin/bash thalos
RUN apt update
RUN apt install -y openssh-server

CMD [ "/usr/sbin/sshd", "-D" ]
