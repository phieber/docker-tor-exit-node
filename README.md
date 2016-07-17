Tor exit node running inside Docker
===================================

Simple, run the start script.  This is customized for me, so edit the torrc for your own usage.

$ docker build -t phieber/docker-tor-exit-node github.com/phieber/docker-tor-exit-node
$ docker run -i -t --rm -p 9001:9001 -p 9051:9051 phieber/docker-tor-exit-node
