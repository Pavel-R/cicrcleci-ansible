FROM cimg/base:2020.03
RUN export DEBIAN_FRONTEND="noninteractive" \
    && sudo apt-add-repository --yes --update ppa:ansible/ansible \
    && sudo apt install --yes --no-install-recommends ansible \
    && sudo apt-get clean \
    && sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
