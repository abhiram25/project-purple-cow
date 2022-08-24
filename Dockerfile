FROM ruby:2.7.2
RUN apt-get update -qq && apt-get install -y build-essential
RUN apt-get install -y libxml2-dev libxslt1-dev
RUN apt-get update && apt-get install -y nodejs
WORKDIR /app
COPY Gemfile* .
RUN bundle install
COPY . .
CMD ["./your-daemon-or-script.rb"]
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
