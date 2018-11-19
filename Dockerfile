FROM ruby

ENV APP_HOME=/usr/local/src 

WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

RUN bundle install

COPY . $APP_HOME

EXPOSE 3000

ENTRYPOINT ["bundle", "exec"]

CMD ["bundle", "exec", "rails", "server", "-p", "3000", "-b", "0.0.0.0"]