FROM balenalib/raspberrypi3-debian:stretch

# Install requirements
RUN apt-get update && apt-get install iptables

# Download and install docker.
RUN curl -fSLs https://get.docker.com | sudo sh

# Download and install the standard libiothsm implementation
RUN curl -L https://aka.ms/libiothsm-std-linux-armhf-latest -o libiothsm-std.deb && sudo dpkg -i ./libiothsm-std.deb
# Download and install the IoT Edge Security Daemon
RUN curl -L https://aka.ms/iotedged-linux-armhf-latest -o iotedge.deb && sudo dpkg -i ./iotedge.deb

# Run apt-get fix
RUN sudo apt-get install -f

WORKDIR /usr/src/app

COPY start.sh .
RUN chmod +x start.sh

COPY config.yaml config.yaml

CMD [ "./start.sh" ]