FROM ruby:latest

RUN apt update && apt -y install exa bat
WORKDIR /root/atcoder_ruby
COPY Gemfile /root/atcoder_ruby/Gemfile
COPY Gemfile.lock /root/atcoder_ruby/Gemfile.lock
RUN bundle install
WORKDIR /root/atcoder_ruby/src
RUN echo "alias ll='exa -la'" >> /root/.bashrc
