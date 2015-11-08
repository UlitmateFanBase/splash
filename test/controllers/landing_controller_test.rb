require 'test_helper'

class LandingControllerTest < ActionController::TestCase
  test "should get splash" do
    get :splash
    assert_response :success
  end

end
