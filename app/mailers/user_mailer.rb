class UserMailer < ActionMailer::Base
  default from: "response@PovertyList.com"

  def post_response(post, response)
    @post = post
    @user = post.user
    @response = response
    mail to: @user.email, subject: "Craiglist:#{@post.title} response"
  end
end
