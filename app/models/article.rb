class Article < ActiveRecord::Base
  attr_accessible :title, :body, :tags, :taggings, :tag_id, :tag_list
  has_many :comments
  has_many :taggings
  has_many :tags, :through => :taggings
  accepts_nested_attributes_for :tags, :taggings
  
  def tag_list
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}
    tag_names.each do |tag_name|
      tag = Tag.find_or_create_by_name(tag_name)
    self.taggings.build(:tag => tag_name)
    end
  end
end
