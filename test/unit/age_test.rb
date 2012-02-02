require 'test_helper'

class AgeTest < ActiveSupport::TestCase
  fixtures :ages

  test "must not be empty" do
    age = Age.new
  #  assert age.invalid?
  #  assert age.errors[:age_range].any?
  end

  test "shoud find" do
    assert_equal '10代', ages(:one).age_range
  end
end
