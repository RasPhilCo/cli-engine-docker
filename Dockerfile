FROM node:10

ENV LANG: en_US.UTF-8
ENV LANGUAGE: en_US.UTF-8
ENV LC_TYPE: en_US.UTF-8
ENV LC_ALL: C.UTF-8

# Install Ruby
RUN \
  apt-get update && \
  apt-get install -y ruby ruby-dev less

# Install devcenter
RUN \
  gem install devcenter --no-ri --no-rdoc

# Remove old gems
RUN \
  gem cleanup
