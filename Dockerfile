FROM ruby:alpine

RUN apk add --no-cache build-base libxml2-dev libxslt-dev postgresql-dev git && \
    bundle config build.nokogiri --use-system-libraries

ENV APP_HOME=/usr/local/src \
    RAILS_ENV=production \
    RAILS_LOG_TO_STDOUT=true

WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

RUN bundle install

COPY . $APP_HOME

EXPOSE 80

CMD ["./bin/puma"]
