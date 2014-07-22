class AdminDashboardsController < ApplicationController
  before_action :ensure_admin, only: [:show]

  def show
    @spam_posts = Post.spam_posts
  end
end
