class Comment < ActiveRecord::Base
  attr_accessible :article_id, :author_name, :body
  belongs_to :article
end