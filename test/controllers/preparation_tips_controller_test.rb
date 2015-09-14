require 'test_helper'

class PreparationTipsControllerTest < ActionController::TestCase
  setup do
    @preparation_tip = preparation_tips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preparation_tips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preparation_tip" do
    assert_difference('PreparationTip.count') do
      post :create, preparation_tip: { name: @preparation_tip.name }
    end

    assert_redirected_to preparation_tip_path(assigns(:preparation_tip))
  end

  test "should show preparation_tip" do
    get :show, id: @preparation_tip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preparation_tip
    assert_response :success
  end

  test "should update preparation_tip" do
    patch :update, id: @preparation_tip, preparation_tip: { name: @preparation_tip.name }
    assert_redirected_to preparation_tip_path(assigns(:preparation_tip))
  end

  test "should destroy preparation_tip" do
    assert_difference('PreparationTip.count', -1) do
      delete :destroy, id: @preparation_tip
    end

    assert_redirected_to preparation_tips_path
  end
end
