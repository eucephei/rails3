class SecretController < ApplicationController
  http_basic_authenticate_with :name => "robot", :password => "metropolis"
  def index
  end
end
