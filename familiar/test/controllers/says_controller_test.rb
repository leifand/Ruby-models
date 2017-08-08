require 'test_helper'

class SaysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get hello" do
    get :hello
    assert_response :success
  end

  test "should get hello/:id" do
    get :hello/:id
    assert_response :success
  end

end
