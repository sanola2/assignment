class CommentController < ApplicationController
  def create
    @comment = Comment.new
    @comment.content = params[:input_comment]
    @comment.post_id = params[:post_id]
    @comment.save
    redirect_to "posts/show/#{params[:post_id]}"
  end

  def destroy
    @comment = Comment.find()
    @comment.destroy
    redirect_to "posts"
  end
end
