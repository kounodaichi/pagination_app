class PostsController < ApplicationController
  def index
    @posts = Post.all.page(params[:page]).per(10)
  end

  def create
    post = Post.create!(body:params[:body])
   redirect_to root_path  
  end
end
