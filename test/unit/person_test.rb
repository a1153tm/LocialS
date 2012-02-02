require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  fixtures :people

  test "must not be empty" do
    person = Person.new
    assert person.invalid?
    assert person.errors[:name].any?
  end

  test "should find" do
    assert_equal 'dudada', people(:two).name
  end

end
