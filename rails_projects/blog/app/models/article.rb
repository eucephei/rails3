class Article < ActiveRecord::Base
  attr_accessible :name, :content
  validates_presence_of :name, :content

  belongs_to :host
  has_many :comments, :dependent => :destroy
end
