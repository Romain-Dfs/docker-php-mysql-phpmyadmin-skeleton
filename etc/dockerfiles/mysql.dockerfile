FROM mysql:8.0

RUN groupadd -g 1000 docker
RUN useradd -u 1000 -g docker docker

USER docker