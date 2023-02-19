FROM ruby:2.7

WORKDIR /app

COPY server.rb .

RUN gem install webrick

EXPOSE 8000

CMD ["ruby", "server.rb"]