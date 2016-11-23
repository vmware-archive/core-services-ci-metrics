# core-services-ci-metrics

A simple rails app for tracking ci failures. 
https://core-services-ci-metrics.cfapps.io/

## Local Development
1. `bundle install`
1. `rake db:create && rake db:migrate && rake db:seed`
1. `bundle exec rails server`
1. Navigate to http://localhost:3000/ in a browser to see the app running
