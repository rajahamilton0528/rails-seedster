class Post < ApplicationRecord
  belongs_to :user

  has_many :comments

  scope :with_comments, -> { joins(:comments) }
  scope :by_author, -> (user) { where(user: user) }

  def self.apply_scopes(*filters)
    filters.inject(all) do |scope_chain, filter|
      scope_chain.merge(filter)
    end
  end
end
