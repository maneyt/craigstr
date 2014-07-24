class SearchesController < ApplicationController
  def show
    @search_results = Post.where("search_cache ILIKE ?","%#{ search_term }%")
  end

  private

  def search_term
    user_input = params[:q].split(" ")
    user_input.join("%")
  end
end
