class UserMailer < ActionMailer::Base
  default from: "POSTRESPONSE@GregsList.com"

  def post_response(post, response)
    @post = post
    @user = post.user
    @response = response
    mail to: @user.email, subject: "Craiglist:#{@post.title} response"
  end
end
