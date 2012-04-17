class Tag < ActiveRecord::Base
  attr_accessible :name, :article_id, :tag_id
  has_many  :taggings
  has_many  :articles, :through => :taggings
  
  def to_s
    name
  end
  


end
