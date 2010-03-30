require 'test_helper'

class UtestsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:utests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create utest" do
    assert_difference('Utest.count') do
      post :create, :utest => { }
    end

    assert_redirected_to utest_path(assigns(:utest))
  end

  test "should show utest" do
    get :show, :id => utests(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => utests(:one).to_param
    assert_response :success
  end

  test "should update utest" do
    put :update, :id => utests(:one).to_param, :utest => { }
    assert_redirected_to utest_path(assigns(:utest))
  end

  test "should destroy utest" do
    assert_difference('Utest.count', -1) do
      delete :destroy, :id => utests(:one).to_param
    end

    assert_redirected_to utests_path
  end
end
