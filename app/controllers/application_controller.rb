class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  def ensure_admin
    unless current_user.admin?
      flash[:error] = "You must be an admin to do this"
      redirect_to root_path
    end
  end

  def ensure_current_user
    post = Post.find(params[:id])
    unless current_user.can_delete?(post)
      flash[:error] = "You cannot delete post that do not belong to you"
      redirect_to root_path
    end
  end
end
