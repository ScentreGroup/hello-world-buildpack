FROM ghcr.io/graalvm/jdk:ol8-java17-22.3.1

#  the container is trying to use xargs,
# which is a command line utility, but it's not
# available in the base image you are using
# (ghcr.io/graalvm/jdk:ol8-java17-22.3.1).
# Install findutils for xargs
RUN microdnf install findutils -y

# Create group and user
RUN groupadd --gid 1009 buildkite && useradd -m -s /bin/bash -u 997 -g buildkite buildkite

# Add buildkite user to docker group (usually, the docker group is GID 993)
RUN groupadd -g 993 docker && usermod -aG docker buildkite

COPY . /usr/app
WORKDIR /usr/app
CMD [""]