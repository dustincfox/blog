class PostController < ApplicationController
  def show
    @post = Post.find(params[:post_id])
  end
end