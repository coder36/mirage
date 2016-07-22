FROM hub.noths.com/ruby:2.3

MAINTAINER Jon Lim <snowblink@gmail.com>

RUN apt-get update

# FOR NOKOGIRI
# RUN apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev libxml2
RUN apt-get install libxml2-dev libxslt1-dev pkg-config -y

ADD . $HOME
RUN bundle install --deployment

RUN chmod +x /service/mirage_server.rb
EXPOSE 7001

CMD ruby /service/mirage_server.rb
