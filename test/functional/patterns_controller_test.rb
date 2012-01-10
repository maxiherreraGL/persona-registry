require 'test_helper'

class PatternsControllerTest < ActionController::TestCase
  test "should get singleton" do
    get :singleton
    assert_response :success
  end

  test "should get factory" do
    get :factory
    assert_response :success
  end

  test "should get builder" do
    get :builder
    assert_response :success
  end

  test "should get strategy" do
    get :strategy
    assert_response :success
  end

end
