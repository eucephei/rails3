# run with stalk ./config/jobs.rb

require File.expand_path("../environment", __FILE__))

job "city.fetch_name" do |args|
  City.find(args["id"]).fetch_name
end

error do |exception|
  # ...
  # run with telnet localhost 11300
end