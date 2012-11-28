require 'test_helper'

class WordanswersControllerTest < ActionController::TestCase
  setup do
    @wordanswer = wordanswers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wordanswers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wordanswer" do
    assert_difference('Wordanswer.count') do
      post :create, wordanswer: { content: @wordanswer.content, question_id: @wordanswer.question_id }
    end

    assert_redirected_to wordanswer_path(assigns(:wordanswer))
  end

  test "should show wordanswer" do
    get :show, id: @wordanswer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wordanswer
    assert_response :success
  end

  test "should update wordanswer" do
    put :update, id: @wordanswer, wordanswer: { content: @wordanswer.content, question_id: @wordanswer.question_id }
    assert_redirected_to wordanswer_path(assigns(:wordanswer))
  end

  test "should destroy wordanswer" do
    assert_difference('Wordanswer.count', -1) do
      delete :destroy, id: @wordanswer
    end

    assert_redirected_to wordanswers_path
  end
end
