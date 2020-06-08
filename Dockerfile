FROM ruby:2.6.5

RUN apt-get update -qq && apt-get install -y nodejs
RUN gem install bundler
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app
