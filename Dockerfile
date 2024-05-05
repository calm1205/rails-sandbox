FROM ruby:3.3.1

RUN apt-get update -y && apt-get install -y \
  build-essential \
  libpq-dev

WORKDIR /api

COPY Gemfile Gemfile.lock ./
RUN bundle install

EXPOSE 3000