class PostsController < ApplicationController
  def index
    Post.new
    @posts = Post.all.order(created_at: :desc).page(params[:page]).per(10)
  end

  def create
    Post.create!(body:params[:body])
    redirect_to root_path  
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
