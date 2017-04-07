#!/bin/bash
# Watch out!, intended for use in production
bundle exec rake db:migrate &&
bundle exec rake assets:clean &&
bundle exec rake assets:precompile
