require 'test_helper'

class NumberanswersControllerTest < ActionController::TestCase
  setup do
    @numberanswer = numberanswers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:numberanswers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create numberanswer" do
    assert_difference('Numberanswer.count') do
      post :create, numberanswer: { content: @numberanswer.content, question_id: @numberanswer.question_id, user_id: @numberanswer.user_id }
    end

    assert_redirected_to numberanswer_path(assigns(:numberanswer))
  end

  test "should show numberanswer" do
    get :show, id: @numberanswer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @numberanswer
    assert_response :success
  end

  test "should update numberanswer" do
    put :update, id: @numberanswer, numberanswer: { content: @numberanswer.content, question_id: @numberanswer.question_id, user_id: @numberanswer.user_id }
    assert_redirected_to numberanswer_path(assigns(:numberanswer))
  end

  test "should destroy numberanswer" do
    assert_difference('Numberanswer.count', -1) do
      delete :destroy, id: @numberanswer
    end

    assert_redirected_to numberanswers_path
  end
end
