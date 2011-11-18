class Book < ActiveRecord::Base
  attr_accessible :name, :author_tokens
  attr_reader :author_tokens
  
  has_many :authorships
  has_many :authors, :through => :authorships
  
  def author_tokens=(ids)
    self.author_ids = ids.split(",")
  end
end
