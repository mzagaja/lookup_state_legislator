require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get lookup" do
    get :lookup
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
