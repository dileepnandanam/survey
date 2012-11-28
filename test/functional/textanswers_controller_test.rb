require 'test_helper'

class TextanswersControllerTest < ActionController::TestCase
  setup do
    @textanswer = textanswers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textanswers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create textanswer" do
    assert_difference('Textanswer.count') do
      post :create, textanswer: { content: @textanswer.content, question_id: @textanswer.question_id, user_id: @textanswer.user_id }
    end

    assert_redirected_to textanswer_path(assigns(:textanswer))
  end

  test "should show textanswer" do
    get :show, id: @textanswer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @textanswer
    assert_response :success
  end

  test "should update textanswer" do
    put :update, id: @textanswer, textanswer: { content: @textanswer.content, question_id: @textanswer.question_id, user_id: @textanswer.user_id }
    assert_redirected_to textanswer_path(assigns(:textanswer))
  end

  test "should destroy textanswer" do
    assert_difference('Textanswer.count', -1) do
      delete :destroy, id: @textanswer
    end

    assert_redirected_to textanswers_path
  end
end
