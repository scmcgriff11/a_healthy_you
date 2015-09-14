require 'test_helper'

class ConditionFoodsControllerTest < ActionController::TestCase
  setup do
    @condition_food = condition_foods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:condition_foods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create condition_food" do
    assert_difference('ConditionFood.count') do
      post :create, condition_food: { name: @condition_food.name }
    end

    assert_redirected_to condition_food_path(assigns(:condition_food))
  end

  test "should show condition_food" do
    get :show, id: @condition_food
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @condition_food
    assert_response :success
  end

  test "should update condition_food" do
    patch :update, id: @condition_food, condition_food: { name: @condition_food.name }
    assert_redirected_to condition_food_path(assigns(:condition_food))
  end

  test "should destroy condition_food" do
    assert_difference('ConditionFood.count', -1) do
      delete :destroy, id: @condition_food
    end

    assert_redirected_to condition_foods_path
  end
end
