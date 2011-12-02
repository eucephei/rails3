# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  username: "ace",
  full_name: "Ace Ventura",
  twitter_name: "zarathustrum",
  avatar_image_name: "default.png",
  url: "http://google.com/",
  bio: <<-BIO
I reproduced [RailsCasts](http://railscasts.com) - Ruby on Rails Screencasts. I also work on the following projects.

* [Rails 3](http://github.com/eucephei)
* [iOS](http://github.com/eucephei)

Be sure to check out my [GitHub page](https://github.com/eucephei) for more projects.
BIO
)

User.create(username: "MrMystery")
