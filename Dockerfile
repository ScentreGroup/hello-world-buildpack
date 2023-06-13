FROM ghcr.io/graalvm/jdk:ol8-java17-22.3.1

#  the container is trying to use xargs,
# which is a command line utility, but it's not
# available in the base image you are using
# (ghcr.io/graalvm/jdk:ol8-java17-22.3.1).
# Install findutils for xargs
RUN microdnf install findutils -y

COPY . /usr/app
WORKDIR /usr/app
CMD [""]