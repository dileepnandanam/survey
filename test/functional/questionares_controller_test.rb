require 'test_helper'

class QuestionaresControllerTest < ActionController::TestCase
  setup do
    @questionare = questionares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionare" do
    assert_difference('Questionare.count') do
      post :create, questionare: { questionare_name: @questionare.questionare_name, user_id: @questionare.user_id }
    end

    assert_redirected_to questionare_path(assigns(:questionare))
  end

  test "should show questionare" do
    get :show, id: @questionare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionare
    assert_response :success
  end

  test "should update questionare" do
    put :update, id: @questionare, questionare: { questionare_name: @questionare.questionare_name, user_id: @questionare.user_id }
    assert_redirected_to questionare_path(assigns(:questionare))
  end

  test "should destroy questionare" do
    assert_difference('Questionare.count', -1) do
      delete :destroy, id: @questionare
    end

    assert_redirected_to questionares_path
  end
end
