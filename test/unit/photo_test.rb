require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  fixtures :photos

  test "must not be empty" do
    photo = Photo.new
    assert photo.invalid?
    assert photo.errors[:image].any?
    assert photo.errors[:title].any?
    assert photo.errors[:description].any?
  end

  test "shoud find" do
    assert_equal '写真', photos(:two).title
    assert_equal 'テストだがね', photos(:two).description
  end
end
