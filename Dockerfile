FROM ruby:3.2.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev curl

ENV RAILS_ROOT /opt/api

RUN mkdir -p ${RAILS_ROOT}
RUN chown -R 1000:1000 ${RAILS_ROOT}

WORKDIR ${RAILS_ROOT}

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

COPY . ${RAILS_ROOT}

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
