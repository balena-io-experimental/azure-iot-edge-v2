FROM balenalib/raspberrypi3-debian:stretch

RUN apt-get update && apt-get install iptables

RUN curl -L --insecure https://aka.ms/moby-cli-armhf-latest -o moby_cli.deb && sudo dpkg -i ./moby_cli.deb
RUN apt-get -f install

# Download and install the standard libiothsm implementation
RUN curl -L https://aka.ms/libiothsm-std-linux-armhf-latest -o libiothsm-std.deb && sudo dpkg -i ./libiothsm-std.deb

# Download and install the IoT Edge Security Daemon
RUN curl -L https://aka.ms/iotedged-linux-armhf-latest -o iotedge.deb && sudo dpkg -i ./iotedge.deb

# Run apt-get fix
RUN sudo apt-get install -f

WORKDIR /usr/src/app

COPY start.sh .
RUN chmod +x start.sh

COPY config.yaml /etc/iotedge/config.yaml

CMD [ "./start.sh" ]