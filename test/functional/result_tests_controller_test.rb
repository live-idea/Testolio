require 'test_helper'

class ResultTestsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:result_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create result_test" do
    assert_difference('ResultTest.count') do
      post :create, :result_test => { }
    end

    assert_redirected_to result_test_path(assigns(:result_test))
  end

  test "should show result_test" do
    get :show, :id => result_tests(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => result_tests(:one).to_param
    assert_response :success
  end

  test "should update result_test" do
    put :update, :id => result_tests(:one).to_param, :result_test => { }
    assert_redirected_to result_test_path(assigns(:result_test))
  end

  test "should destroy result_test" do
    assert_difference('ResultTest.count', -1) do
      delete :destroy, :id => result_tests(:one).to_param
    end

    assert_redirected_to result_tests_path
  end
end
