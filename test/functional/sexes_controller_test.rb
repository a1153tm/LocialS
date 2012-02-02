require 'test_helper'

class SexesControllerTest < ActionController::TestCase
  setup do
    @sex = sexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sex" do
    assert_difference('Sex.count') do
      post :create, :sex => @sex.attributes
    end

    assert_redirected_to sex_path(assigns(:sex))
  end

  test "should show sex" do
    get :show, :id => @sex.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sex.to_param
    assert_response :success
  end

  test "should update sex" do
    put :update, :id => @sex.to_param, :sex => @sex.attributes
    assert_redirected_to sex_path(assigns(:sex))
  end

  test "should destroy sex" do
    assert_difference('Sex.count', -1) do
      delete :destroy, :id => @sex.to_param
    end

    assert_redirected_to sexes_path
  end
end
