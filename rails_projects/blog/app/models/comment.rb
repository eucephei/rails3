class Comment < ActiveRecord::Base
  attr_accessible :article_id, :author_name, :content
  validates_presence_of :author_name, :content
    
  belongs_to :article
end
