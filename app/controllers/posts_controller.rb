class PostsController < ApplicationController
  before_action :ensure_user_can_destroy_post, only: [:destroy]

  def new
    @post = Post.new
    @category = Category.find(params[:category_id])
  end

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
    @mail_response = MailResponse.new
  end

  def create
    category = Category.find(params[:category_id])
    post = current_user.posts.create(post_params.merge(category_id: category.id))
    redirect_to category
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
