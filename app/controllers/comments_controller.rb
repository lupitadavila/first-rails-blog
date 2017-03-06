class CommentsController < ApplicationController

  def comment_params
    params.require(:comment).permit(:body)
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])
    redirect_to @post
  end
end
