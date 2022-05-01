FROM composer:2.1.5

WORKDIR /app

ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]