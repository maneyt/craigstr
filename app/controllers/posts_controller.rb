class PostsController < ApplicationController
  before_action :ensure_user_can_destroy_post, only: [:destroy]
  before_action :require_login

  def index
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
  end

  def create
    category = Category.find(params[:category_id])
    @post = current_user.posts.create(post_params.merge(category_id: category.id))
    render @post, status: 200
  end
  private

  def post_params
    params.require(:post).permit(
      :title, 
      :body,
      :category_id,
    )
  end
end
