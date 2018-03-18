# RottenPotatoes demo app: getting started

This app is associated with the free [online
course](http://www.saas-class.org) and (non-free)
[ebook](http://www.saasbook.info) Engineering Software as a Service.

To get started:

0. [Setup a Cloud9
environment](https://github.com/saasbook/courseware/wiki/Setting-up-Cloud9)
for the course.

0. Fork this repo to your GitHub account, then in your Cloud9 terminal, type the following command to clone your fork to your development workspace:

  `git clone git@github.com:your_github_username/rottenpotatoes-rails-intro.git`

0. Then `cd rottenpotatoes-rails-intro` to change to the app's
directory.

0. Run the command `bundle install --without production` to make sure all the gems
(libraries) used by the app are in place.

0. Run `bundle exec rake db:setup` to create the initial database.

0. Run `rails server -p $PORT -b $IP` to start the app.  Cloud9 will pop
up a window showing the URL to visit in your browser to interact with
the running app.


## Running locally

Setup the app with

    bundle exec rake db:setup

Then run it locally

    rails server -p 8080 -b 0.0.0.0


Notes on ActiveRecord [here](https://apidock.com/rails/ActiveRecord/QueryMethods/order), [here](https://stackoverflow.com/questions/1278510/sort-array-returned-by-activerecord-by-date-or-any-other-column
), [here](https://stackoverflow.com/questions/19780148/how-to-sort-movies-alphabetically-in-rails
), and [here](https://stackoverflow.com/questions/13529804/how-to-use-wildcards-in-an-active-record-where-clause-while-protecting-against-s
). 



