require 'test_helper'

class DiseasesControllerTest < ActionController::TestCase
  setup do
    @disease = diseases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diseases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disease" do
    assert_difference('Disease.count') do
      post :create, :disease => @disease.attributes
    end

    assert_redirected_to disease_path(assigns(:disease))
  end

  test "should show disease" do
    get :show, :id => @disease.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @disease.to_param
    assert_response :success
  end

  test "should update disease" do
    put :update, :id => @disease.to_param, :disease => @disease.attributes
    assert_redirected_to disease_path(assigns(:disease))
  end

  test "should destroy disease" do
    assert_difference('Disease.count', -1) do
      delete :destroy, :id => @disease.to_param
    end

    assert_redirected_to diseases_path
  end
end
