class PostsController < ApplicationController
  PER_PAGE = 10
  def index
    Post.new
    @posts = Post.order(created_at: :desc).page(params[:page]).per(PER_PAGE)
  end

  def create
    Post.create!(Post_params)
    redirect_to root_path  
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
