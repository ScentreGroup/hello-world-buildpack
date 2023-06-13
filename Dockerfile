FROM ghcr.io/graalvm/jdk:ol8-java17-22.3.1

RUN microdnf install findutils sudo -y && \
    microdnf install -y dnf && \
    dnf install -y yum-utils && \
    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo && \
    microdnf install -y docker-ce-cli

USER buildkite

COPY . /usr/app
WORKDIR /usr/app
CMD [""]