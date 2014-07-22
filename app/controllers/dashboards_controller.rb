class DashboardsController < ApplicationController
  def show
    @posts = current_user.posts
    @spam_posts = Post.spam_posts
  end
end
