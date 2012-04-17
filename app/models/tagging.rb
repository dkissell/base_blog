class Tagging < ActiveRecord::Base
  attr_accessible :article_id, :tag_id, :tag, :name
  belongs_to :article
  belongs_to :tag
end
