class SearchesController < ApplicationController
  def show
    @posts = searched_posts
  end

  private

  def search_terms
    params[:q].split.map { |term| "%#{term}%"}
  end

  def searched_posts
    posts = Post
    search_terms.each do |term|
      posts = posts.where(condition, term)
    end
    posts
  end

  def condition
    "search_cache ILIKE ?"
  end
end
