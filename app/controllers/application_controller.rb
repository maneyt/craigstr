class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers
  protect_from_forgery with: :exception

  def ensure_admin
    unless current_user.admin
      flash[:error] = "You must be an admin to do this"
      redirect_to root_path
    end
  end

  def ensure_user_can_destroy_post
    post = Post.find(params[:id])
    unless current_user.can_delete?(post)
      flash[:error] = "You cannot delete other users posts!"
      redirect_to root_path
    end
  end
end
