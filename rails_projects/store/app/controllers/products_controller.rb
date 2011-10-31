class ProductsController < ApplicationController
  
  respond_to :html, :json, :xml
  
  # GET /products
  # GET /products.json
  def index
    @products = Product.search(params)
    
    respond_with(@products)
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    
    respond_with(@products)
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
    
    respond_with(@product)
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    respond_with(@product) do |format|
      format.xml { render :text => @product.to_xml }
    end
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])
    
    if @product.save
      cookies.permanent[:last_product_id] = @product.id
      flash[:notice] = "Successfully created product."
    end
    
    respond_with(@product)
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(params[:product])
      flash[:notice] = "Successfully updated product."
    end
    
    respond_with(@product, :location => products_url)
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Successfully destroyed product."
    
    respond_with(@product, :responder => MyResponder)
  end
end
