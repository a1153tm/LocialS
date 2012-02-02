require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  fixtures :comments

  test "comment must not be empty" do
    comment = Comment.new
    assert comment.invalid?
    assert comment.errors[:comment].any?
  end

  test "find english" do
    assert_equal 'MyText', comments(:one).comment
  end

  test "find japanese" do
    assert_equal '日本語', comments(:two).comment
  end

end
