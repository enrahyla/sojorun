require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get About" do
    get :About
    assert_response :success
  end

  test "should get Contact" do
    get :Contact
    assert_response :success
  end

end
