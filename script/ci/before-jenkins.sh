#!/bin/bash

set -e
set -x

cp config/ci/jenkins/diaspora.yml config/diaspora.yml
cp config/ci/jenkins/database.yml config/database.yml

rm -f log/test.log

gem install bundler

# install missing gems
bundle install --without development production heroku

echo "Regenerating CSS files"
bundle exec rake assets:precompile

bundle exec rake db:drop
bundle exec rake db:create
bundle exec rake db:schema:load