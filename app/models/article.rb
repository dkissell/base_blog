class Article < ActiveRecord::Base
  attr_accessible :title, :body, :tag_id, :article_id, :tag_list, :tag
  has_many :comments
  has_many :taggings
  has_many :tags, :through => :taggings
  
  def tag_list=(tags_string)
  tag_names = tags_string.split(",").collect{|s| s.strip.downcase}
  tag_names.each do |tag_name|
    tag = Tag.find_or_create_by_name(tag_name)
    self.taggings.build(:tag => tag)
  end
end
  
  
end
