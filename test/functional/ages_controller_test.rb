require 'test_helper'

class AgesControllerTest < ActionController::TestCase
  setup do
    @age = ages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create age" do
    assert_difference('Age.count') do
      post :create, :age => @age.attributes
    end

    assert_redirected_to age_path(assigns(:age))
  end

  test "should show age" do
    get :show, :id => @age.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @age.to_param
    assert_response :success
  end

  test "should update age" do
    put :update, :id => @age.to_param, :age => @age.attributes
    assert_redirected_to age_path(assigns(:age))
  end

  test "should destroy age" do
    assert_difference('Age.count', -1) do
      delete :destroy, :id => @age.to_param
    end

    assert_redirected_to ages_path
  end
end
