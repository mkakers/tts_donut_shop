require 'test_helper'

class DoughnutsControllerTest < ActionController::TestCase
  setup do
    @doughnut = doughnuts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doughnuts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doughnut" do
    assert_difference('Doughnut.count') do
      post :create, doughnut: { cost: @doughnut.cost, dough: @doughnut.dough, image: @doughnut.image, name: @doughnut.name, toppings: @doughnut.toppings }
    end

    assert_redirected_to doughnut_path(assigns(:doughnut))
  end

  test "should show doughnut" do
    get :show, id: @doughnut
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doughnut
    assert_response :success
  end

  test "should update doughnut" do
    patch :update, id: @doughnut, doughnut: { cost: @doughnut.cost, dough: @doughnut.dough, image: @doughnut.image, name: @doughnut.name, toppings: @doughnut.toppings }
    assert_redirected_to doughnut_path(assigns(:doughnut))
  end

  test "should destroy doughnut" do
    assert_difference('Doughnut.count', -1) do
      delete :destroy, id: @doughnut
    end

    assert_redirected_to doughnuts_path
  end
end
