require 'test_helper'

class SessionControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create:post" do
    get :create:post
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
