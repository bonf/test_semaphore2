FROM ruby:2.5.1-alpine
RUN apk add --update --no-cache \
    bash \
    htop \
    postgresql-client \
    build-base \
    postgresql-dev \
    git \
    imagemagick \
    nodejs-current \
    yarn \
    tzdata \
    busybox-extras


RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
#RUN bundle install
COPY . /app

# Add a script to be executed every time the container starts.
COPY docker/start_web.sh /usr/bin/
RUN chmod +x /usr/bin/start_web.sh
#ENTRYPOINT ["start_web.sh"]
EXPOSE 3000

ENV RAILS_LOG_TO_STDOUT true
ENV RAILS_SERVE_STATIC_FILES true
# Start the main process.
#CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
CMD ["start_web.sh"]
