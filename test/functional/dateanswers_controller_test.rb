require 'test_helper'

class DateanswersControllerTest < ActionController::TestCase
  setup do
    @dateanswer = dateanswers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dateanswers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dateanswer" do
    assert_difference('Dateanswer.count') do
      post :create, dateanswer: { content: @dateanswer.content, question_id: @dateanswer.question_id, user_id: @dateanswer.user_id }
    end

    assert_redirected_to dateanswer_path(assigns(:dateanswer))
  end

  test "should show dateanswer" do
    get :show, id: @dateanswer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dateanswer
    assert_response :success
  end

  test "should update dateanswer" do
    put :update, id: @dateanswer, dateanswer: { content: @dateanswer.content, question_id: @dateanswer.question_id, user_id: @dateanswer.user_id }
    assert_redirected_to dateanswer_path(assigns(:dateanswer))
  end

  test "should destroy dateanswer" do
    assert_difference('Dateanswer.count', -1) do
      delete :destroy, id: @dateanswer
    end

    assert_redirected_to dateanswers_path
  end
end
