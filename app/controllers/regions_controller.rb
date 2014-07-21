class RegionsController < ApplicationController
  before_action :ensure_admin, only: [:create]

  def create
    region = Region.create(region_params)
    redirect_to region
  end

  def show
    @region = Region.find(params[:id])
    @category = Category.new
  end

  private

  def region_params
    params.require(:region).permit(:name)
  end
end
