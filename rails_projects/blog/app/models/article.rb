class Article < ActiveRecord::Base
  belongs_to :host
  has_many :comments, :dependent => :destroy
  validates_presence_of :name, :content
end
