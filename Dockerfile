FROM ruby:3.2

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4

# Install dependencies and ecutools
RUN apt-get update && \ apt-get install -y build-essential libreadline-dev zlib1g-dev libssl-dev git curl gobjdump && \
    gem install ecutools --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ecutools"]
CMD ["--help"]
