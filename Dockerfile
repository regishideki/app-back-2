FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app-back-2
WORKDIR /app-back-2
ADD Gemfile /app-back-2/Gemfile
ADD Gemfile.lock /app-back-2/Gemfile.lock
RUN bundle install
COPY . /app-back-2
