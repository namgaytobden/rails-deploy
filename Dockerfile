FROM ruby:3.1.4-slim-bullseye
 
RUN apt-get update && apt-get install -y build-essential nodejs libssl-dev libreadline-dev zlib1g-dev

RUN mkdir /app
WORKDIR /app

COPY . /app/

RUN gem install bundler && bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

