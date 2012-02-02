require 'test_helper'

class StatutsControllerTest < ActionController::TestCase
  setup do
    @statut = statuts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statuts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statut" do
    assert_difference('Statut.count') do
      post :create, statut: @statut.attributes
    end

    assert_redirected_to statut_path(assigns(:statut))
  end

  test "should show statut" do
    get :show, id: @statut.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statut.to_param
    assert_response :success
  end

  test "should update statut" do
    put :update, id: @statut.to_param, statut: @statut.attributes
    assert_redirected_to statut_path(assigns(:statut))
  end

  test "should destroy statut" do
    assert_difference('Statut.count', -1) do
      delete :destroy, id: @statut.to_param
    end

    assert_redirected_to statuts_path
  end
end
