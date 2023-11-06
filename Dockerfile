FROM ruby:3.1.4-alpine

RUN apk add --update --no-cache nodejs

RUN mkdir /app
WORKDIR /app

COPY . /app/

RUN gem install bundler && bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

