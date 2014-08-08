FROM        debian:wheezy
MAINTAINER  Maxime Tricoire <max.tricoire@gmail.com> (@maxleiko)

WORKDIR     /root

ADD         http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz /tmp/node.tar.gz
RUN         mkdir /root/node
RUN         tar --extract --file=/tmp/node.tar.gz --strip-components=1 --directory=/root/node
RUN         rm -rf /tmp/node.tar.gz

ENV         NODE_PATH   /root/node
ENV         PATH        $NODE_PATH/bin:$PATH
