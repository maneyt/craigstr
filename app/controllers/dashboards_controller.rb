class DashboardsController < ApplicationController
  def show
    @region = Region.new
    @regions = Region.all
    @posts = current_user.posts
  end
end
