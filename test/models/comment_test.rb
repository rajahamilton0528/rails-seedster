require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "comment attributes" do
    comment = comments(:first)
    assert comment.title.present?
    assert comment.user.present?
    assert comment.post.present?
  end
end
