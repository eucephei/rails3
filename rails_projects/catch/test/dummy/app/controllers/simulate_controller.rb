class SimulateController < ApplicationController
  def failure
    # redirect_to catch_engine.root_url
    raise "Simulating an exception"
  end

end
