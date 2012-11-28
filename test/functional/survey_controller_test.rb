require 'test_helper'

class SurveyControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get currentsurveys" do
    get :currentsurveys
    assert_response :success
  end

end
