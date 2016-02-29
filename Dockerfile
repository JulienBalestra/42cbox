FROM debian:latest

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
        build-essential \
        valgrind \
        git \
        python \
        libncurses5-dev

COPY shell_hook.sh /root/shell_hook.sh

ENTRYPOINT ["/root/shell_hook.sh"]