class PostController < ApplicationController
  def show
    @post = Post.find(params[:post_id])
  end

  def create
    Post.create(title: params[:title],
                post_content: params[:post_content],
                user_id:  current_user.id)
    redirect_to '/'
  end
end