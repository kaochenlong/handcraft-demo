class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.save
    flash[:notice] = "已成功送出!"
    redirect_to posts_path
  end

  def edit
    @post = Post.find_by(id: params[:id])
    redirect_to posts_path unless @post
  end

  def show
  end

  # Strong Parameter
  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
