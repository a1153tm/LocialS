require 'test_helper'

class AreaTest < ActiveSupport::TestCase
  fixtures :areas

  test "must not be empty" do
    area = Area.new
    assert area.invalid?
    assert area.errors[:area_name].any?
  end

  test "shoud find" do
    assert_equal '品川区', areas(:one).area_name
  end
end
