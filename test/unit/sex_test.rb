require 'test_helper'

class SexTest < ActiveSupport::TestCase
  fixtures :sexes

  test "must not be empty" do
    sex = Sex.new
    assert sex.invalid?
    assert sex.errors[:sex].any?
  end

  test "shoud find" do
    assert_equal '男性', sexes(:one).sex
  end
end
