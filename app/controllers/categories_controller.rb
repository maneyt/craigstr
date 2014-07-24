class CategoriesController < ApplicationController
  before_action :ensure_admin, only: [:create]

  def create
    region = Region.friendly.find(params[:region_id])
    category = region.categories.new(category_params)
    if category.save
      redirect_to category
    else
      redirect_to region
    end
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts.recent_first.page params[:page]
  end

  private

  def category_params
    params.require(:category).permit(:title)
  end
end
