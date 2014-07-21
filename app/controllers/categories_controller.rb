class CategoriesController < ApplicationController
  before_action :ensure_admin

  def create
    region = Region.find(params[:region_id])
    category = region.categories.create(category_params)
    redirect_to [region, category]
  end

  def show

  end

  private

  def ensure_admin
    unless current_user.admin?
      flash[:error] = "You must be an admin to do this"
      redirect_to root_path
    end
  end

  def category_params
    params.require(:category).permit(:title)
  end
end
