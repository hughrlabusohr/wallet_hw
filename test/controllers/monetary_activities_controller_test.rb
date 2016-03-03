require 'test_helper'

class MonetaryActivitiesControllerTest < ActionController::TestCase
  setup do
    @monetary_activity = monetary_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monetary_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monetary_activity" do
    assert_difference('MonetaryActivity.count') do
      post :create, monetary_activity: { amount: @monetary_activity.amount, name: @monetary_activity.name, spent_on: @monetary_activity.spent_on }
    end

    assert_redirected_to monetary_activity_path(assigns(:monetary_activity))
  end

  test "should show monetary_activity" do
    get :show, id: @monetary_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monetary_activity
    assert_response :success
  end

  test "should update monetary_activity" do
    patch :update, id: @monetary_activity, monetary_activity: { amount: @monetary_activity.amount, name: @monetary_activity.name, spent_on: @monetary_activity.spent_on }
    assert_redirected_to monetary_activity_path(assigns(:monetary_activity))
  end

  test "should destroy monetary_activity" do
    assert_difference('MonetaryActivity.count', -1) do
      delete :destroy, id: @monetary_activity
    end

    assert_redirected_to monetary_activities_path
  end
end
