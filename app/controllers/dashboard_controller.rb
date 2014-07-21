class DashboardController < ApplicationController
  def show
    @region = Region.new
    @regions = Region.all
  end
end
