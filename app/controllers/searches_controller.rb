class SearchesController < ApplicationController
  def show
    @posts = Post.where(query_string, *search_terms)
  end

  private

  def query_string
    condition = "search_cache ILIKE ?"
    search_terms.length.times.map { condition }.join(" AND ")
  end

  def search_terms
    params[:q].split.map { |term| "%#{term}%"}
  end
end
