class ApplicationController < ActionController::Base
  # include UrlHelper
  include ControllerAuthentication
  helper :all # include all helpers, all the time

  protect_from_forgery  
  layout 'application'
end
