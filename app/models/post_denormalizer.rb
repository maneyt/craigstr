class PostDenormalizer
  def initialize(post)
    @post = post
  end

  def title
    @post.title
  end

  def body
    @post.body
  end

  def category
    @post.category
  end

  def region
    category.region
  end

  def search_cache
    search_string.gsub(/[ ]/, '').downcase
  end

  private

  def search_string
    body + title + category.title + region.name
  end

end
