class Post < ApplicationRecord
  belongs_to :user

  has_many :comments

  scope :with_comments, -> { includes(:comments) }
  scope :by_author, -> (user) { where(user: user) }

  # pattern to merge more than one scope
  def self.apply_scopes(*filters)
    filters.inject(all) do |scope_chain, filter|
      scope_chain.merge(filter)
    end
  end

  # e.g. Post.search(
  #   with_comments: true,
  #   author_id: 1
  # )
  def self.search(params = {})
    search = SearchParams.new(params)

    Post.apply_scopes(
      search.with_comments,
      search.by_author
    )
  end
end
