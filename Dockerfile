FROM ruby:2.4.6-stretch
MAINTAINER yuu

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    nodejs
RUN apt-get clean
ENV DEBIAN_FRONTEND dialog

# update: require bundle v2
RUN gem update --system & gem install bundler -v 2.1.4

RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

COPY . /app

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
