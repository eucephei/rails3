class CartsController < ApplicationController

  # GET /carts/1
  # GET /carts/1.json
  def show
    @cart = current_cart

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cart }
    end
  end

end
