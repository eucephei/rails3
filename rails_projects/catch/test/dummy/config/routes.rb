Rails.application.routes.draw do

  get "simulate/failure"

  mount Catch::Engine => "/catch", :as => "catch_engine"
end
