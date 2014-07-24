class PostsController < ApplicationController
  before_action :ensure_user_can_destroy_post, only: [:destroy]
  before_action :require_login, only: [:create]

  def new
    @post = Post.new
  end

  def index
    @post = Post.new
    @posts = Post.all
  end

  def destroy
    post = Post.find(params[:id])
    category = Category.find(post.category_id)
    post.destroy
    redirect_to category
  end

  def show
    @post = Post.find(params[:id])
    @post_response = PostResponse.new
  end

  def create
    post = current_user.posts.create(post_params)
    redirect_to post.category
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(
      :title,
      :body,
      :category_id,
      :url,
    )
  end
end
