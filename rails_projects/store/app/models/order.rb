class Order < ActiveRecord::Base
  attr_accessible :id, :purchased_at, :shipping, :total_price
  
  def self.search(search)
    if search
      ActiveSupport::Notifications.instrument("orders.search", :search => search)
      where('total_price LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
  scope :shipping, where(:shipping => true)
  scope :download, where(:shipping => false)  
  
  def self.total_on(date)
    where("date(purchased_at) = ?", date).sum(:total_price)
  end
end
