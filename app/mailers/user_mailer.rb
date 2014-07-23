class UserMailer < ActionMailer::Base
  default from: "reponse@PovertyList.com"

  def post_response(post, response)
    @post = post
    @user = post.user
    @response = response
    mail to: @user.email, subject: "Craiglist post response"
  end
end
