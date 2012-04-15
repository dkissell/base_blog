class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    @comment.save
    flash[:message] = "Your comment has been posted"
    redirect_to article_path(@comment.article)
  end
end
