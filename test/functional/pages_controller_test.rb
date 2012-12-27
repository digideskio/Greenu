require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get monday" do
    get :monday
    assert_response :success
  end

  test "should get tuesday" do
    get :tuesday
    assert_response :success
  end

  test "should get wednesday" do
    get :wednesday
    assert_response :success
  end

  test "should get thursday" do
    get :thursday
    assert_response :success
  end

  test "should get friday" do
    get :friday
    assert_response :success
  end

  test "should get saturday" do
    get :saturday
    assert_response :success
  end

  test "should get sunday" do
    get :sunday
    assert_response :success
  end

end
