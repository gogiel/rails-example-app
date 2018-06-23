FROM ruby:2.5.1-alpine

RUN apk add --no-cache --update build-base \
                                postgresql-dev \
                                nodejs \
                                tzdata
# Different layer for gems installation
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle
