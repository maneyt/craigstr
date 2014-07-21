class RegionsController < ApplicationController
  before_action :ensure_admin
 
  def create
    region = Region.create(region_params)
    redirect_to region
  end

  private

  def ensure_admin
    unless current_user.admin?
      flash[:error] = "You must be an admin to do this"
      redirect_to root_path
    end
  end

  def region_params
    params.require(:region).permit(:name)
  end
end
