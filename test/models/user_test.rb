require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user attributes" do
    rosie = users(:rosie)
    assert rosie.name.present?
  end
end
