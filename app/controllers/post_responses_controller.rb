class PostResponsesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post_response = post.post_responses.create(response_params)
    UserMailer.post_response(post, post_response).deliver
    redirect_to post
  end

  private

  def response_params
    params.require(:post_response).permit(:message)
  end
end
