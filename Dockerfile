FROM ubuntu:latest

LABEL Description="This image creates an exit node" Vendor="Patrick Hieber" Version="0.1"

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y tor tor-geoipdb tor-arm slurm vim-nox dstat

ADD launch.sh launch.sh
ADD torrc /etc/tor/torrc

EXPOSE 9001
EXPOSE 9051

ENTRYPOINT bash /launch.sh
