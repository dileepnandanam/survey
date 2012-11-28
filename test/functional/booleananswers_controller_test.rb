require 'test_helper'

class BooleananswersControllerTest < ActionController::TestCase
  setup do
    @booleananswer = booleananswers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booleananswers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booleananswer" do
    assert_difference('Booleananswer.count') do
      post :create, booleananswer: { content: @booleananswer.content, question_id: @booleananswer.question_id }
    end

    assert_redirected_to booleananswer_path(assigns(:booleananswer))
  end

  test "should show booleananswer" do
    get :show, id: @booleananswer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booleananswer
    assert_response :success
  end

  test "should update booleananswer" do
    put :update, id: @booleananswer, booleananswer: { content: @booleananswer.content, question_id: @booleananswer.question_id }
    assert_redirected_to booleananswer_path(assigns(:booleananswer))
  end

  test "should destroy booleananswer" do
    assert_difference('Booleananswer.count', -1) do
      delete :destroy, id: @booleananswer
    end

    assert_redirected_to booleananswers_path
  end
end
