class AdminDashboardsController < ApplicationController
  before_action :ensure_admin, only: [:show]

  def show
    @spam = Post.spam
  end
end
