FROM ghcr.io/graalvm/jdk:ol8-java17-22.3.1

RUN microdnf install findutils sudo -y

USER buildkite

COPY . /usr/app
WORKDIR /usr/app
CMD [""]