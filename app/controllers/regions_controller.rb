class RegionsController < ApplicationController
  before_action :ensure_admin, only: [:create]

  def index
    @regions = Region.all
    @region = Region.new
    @map_hash = Gmaps4rails.build_markers(@regions) do |region, marker|
      marker.lat region.latitude
      marker.lng region.longitude
    end
  end

  def create
    region = Region.new(region_params)
    if region.save
      redirect_to region
    else
      redirect_to root_path
    end
  end

  def show
    @region = Region.friendly.find(params[:slug])
    @category = Category.new
  end

  private

  def region_params
    params.require(:region).permit(:name)
  end
end
