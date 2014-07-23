class MailResponsesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    mail_response = MailResponse.new(response_params)
    UserMailer.post_response(post, mail_response).deliver
    redirect_to post
  end

  private 

  def response_params
    params.require(:mail_response).permit(:message)
  end
end
