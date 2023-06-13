FROM ghcr.io/graalvm/jdk:ol8-java17-22.3.1

# Install findutils for xargs and sudo
RUN microdnf install findutils sudo -y

# Create group and user, give permissions to docker socket, and add buildkite user to docker group
#RUN groupadd --gid 1009 buildkite && \
#    useradd -m -s /bin/bash -u 997 -g buildkite buildkite && \
#    sudo chmod 666 /var/run/docker.sock && \
#    groupadd -g 993 docker && \
#    usermod -aG docker buildkite
USER buildkite
COPY . /usr/app
WORKDIR /usr/app
CMD [""]