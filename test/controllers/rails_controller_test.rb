require 'test_helper'

class RailsControllerTest < ActionController::TestCase
  test "should get d" do
    get :d
    assert_response :success
  end

  test "should get model" do
    get :model
    assert_response :success
  end

  test "should get messages" do
    get :messages
    assert_response :success
  end

end
