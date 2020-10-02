FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /test-sample
COPY Gemfile Gemfile.lock /test-sample/
RUN bundle install