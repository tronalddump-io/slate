FROM ruby:2.3-alpine

ENV APP_PATH /usr/src/app

# Install utils
RUN apk add --update bash g++ make nodejs

# Create app directory
RUN mkdir -p $APP_PATH
WORKDIR $APP_PATH

# Bundle app source
COPY . $APP_PATH

VOLUME $APP_PATH
EXPOSE 4567

RUN bundle install

CMD ["bundle", "exec", "middleman", "server"]
