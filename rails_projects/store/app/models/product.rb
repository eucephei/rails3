class Product < ActiveRecord::Base
  attr_accessible :name, :price, :description
  
  belongs_to :category
  has_many :reviews

  scope :cheaper_than, lambda { |price=50| where("price < ?", price) }
  scope :cheap, cheaper_than(30)

  def self.search(params)
    # where("name like ?", "%#{params}%")
    products = scoped
    products = products.where("name like ?", "%" + params[:name] + "%") if params[:name]
    products = products.where("price >= ?", params[:price_gt]) if params[:price_gt]
    products = products.where("price <= ?", params[:price_lt]) if params[:price_lt]
    products
  end
  
    
end
