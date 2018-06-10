FROM ruby:2.5.1-alpine

RUN apk add --no-cache --update build-base \
                                postgresql-dev \
                                nodejs \
                                tzdata
ENV APP_PATH /app

# Different layer for gems installation
WORKDIR $APP_PATH
COPY Gemfile Gemfile.lock $APP_PATH/
RUN bundle

EXPOSE 3000