FROM ruby:2.5.3-alpine3.8
# used the following as an example: https://github.com/rgcamus/dockerfile-alpine_smashing
# https://docs.docker.com/engine/reference/builder/
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
LABEL maintainer "Sher Chowdhury"

RUN echo "alias ll='ls -lrt'" > ~/.bashrc

RUN apk --update --no-cache add

RUN apk update && apk upgrade
RUN apk add \
  tzdata \
  rsync \
  curl \
  wget \
  bash \
  nodejs \
  gcc \
  pkgconfig \
  curl-dev \
  imagemagick6 \
  imagemagick6-dev \
  ruby \
  ruby-bundler \
  ruby-dev \
  zlib \
  zlib-dev

# Needed to make native extensions
RUN apk add ruby-dev g++ musl-dev make \
    && echo "gem: --no-document" > /etc/gemrc

RUN gem install bundler #-v 1.17.3


RUN mkdir /bundler
COPY Gemfile /bundler/
WORKDIR /bundler
RUN bundle install
