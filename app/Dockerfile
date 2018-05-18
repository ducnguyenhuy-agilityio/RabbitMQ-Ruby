FROM ruby:2.4-alpine

RUN apk add --no-cache make gcc libc-dev

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile ./

RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . ./

CMD ["sh"]
