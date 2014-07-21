class CategoriesController < ApplicationController
  before_action :ensure_admin, only: [:create]

  def create
    region = Region.find(params[:region_id])
    category = region.categories.create(category_params)
    redirect_to category
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:title)
  end
end
