class PostDenormalizer
  def initialize(post)
    @post = post
  end

  def search_cache
    body + title + category.title + region.name
  end

  private

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
end
