class ApplicationController < ActionController::Base
  include ControllerAuthentication  # see application.rb
  protect_from_forgery
end
