require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "post attributes" do
    post = posts(:cheesecopter)
    assert post.title.present?
    assert post.user.present?
  end
end
