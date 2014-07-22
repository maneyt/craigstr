class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers
  protect_from_forgery with: :exception
  before_action :require_login

  def ensure_admin
    unless current_user.admin?
      redirect_to root_path
    end
  end

  def ensure_user_can_destroy_post
    post = Post.find(params[:id])
    unless current_user.can_delete?(post)
      redirect_to root_path
    end
  end
end
