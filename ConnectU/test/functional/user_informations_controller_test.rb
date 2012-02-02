require 'test_helper'

class UserInformationsControllerTest < ActionController::TestCase
  setup do
    @user_information = user_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_information" do
    assert_difference('UserInformation.count') do
      post :create, user_information: @user_information.attributes
    end

    assert_redirected_to user_information_path(assigns(:user_information))
  end

  test "should show user_information" do
    get :show, id: @user_information.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_information.to_param
    assert_response :success
  end

  test "should update user_information" do
    put :update, id: @user_information.to_param, user_information: @user_information.attributes
    assert_redirected_to user_information_path(assigns(:user_information))
  end

  test "should destroy user_information" do
    assert_difference('UserInformation.count', -1) do
      delete :destroy, id: @user_information.to_param
    end

    assert_redirected_to user_informations_path
  end
end
