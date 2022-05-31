FROM ruby:3.0.0

RUN mkdir /chef
WORKDIR /chef

EXPOSE 3000

COPY Gemfile .
COPY Gemfile.lock .
RUN gem update bundler
RUN bundle install

CMD rails server -b 0.0.0.0