BaseBlog::Application.routes.draw do
  get "tags/index"

  get "tags/show"

  get "tag/index"

  get "tag/show"

  resources   :articles  
  resources   :comments
  resources   :tags
end
