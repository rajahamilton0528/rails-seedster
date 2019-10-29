class SearchParams
  attr_reader :params

  def initialize(params = {})
    @params = params
  end

  def with_comments
    if params[:with_comments]
      Post.with_comments
    else
      Post.all
    end
  end

  def by_author
    if author_id = params[:author_id]
      Post.by_author(author_id)
    else
      Post.all
    end
  end
end
