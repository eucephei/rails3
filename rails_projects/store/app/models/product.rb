class Product < ActiveRecord::Base
  belongs_to :category
  
  def self.search(params)
    # where("name like ?", "%#{params}%")
    products = scoped
    products = products.where("name like ?", "%" + params[:name] + "%") if params[:name]
    products = products.where("price >= ?", params[:price_gt]) if params[:price_gt]
    products = products.where("price <= ?", params[:price_lt]) if params[:price_lt]
    products
  end
  
end
