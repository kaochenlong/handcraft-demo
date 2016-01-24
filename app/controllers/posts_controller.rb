class PostsController < ApplicationController

  before_action :find_post, only:[:show, :edit, :update, :destroy]

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
    redirect_to root_path
  end

  def edit
  end

  def update
    # do update
  end

  def show
  end

  def destroy
    # do delete
  end

  # Strong Parameter
  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

  def find_post
    @post = Post.find_by(id: params[:id])
    redirect_to posts_path unless @post
  end
end
