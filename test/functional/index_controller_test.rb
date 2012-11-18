require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get greeting" do
    get :greeting
    assert_response :success
  end

  test "should get committee" do
    get :committee
    assert_response :success
  end

  test "should get overview" do
    get :overview
    assert_response :success
  end

  test "should get program" do
    get :program
    assert_response :success
  end

  test "should get cfg" do
    get :cfg
    assert_response :success
  end

  test "should get info" do
    get :info
    assert_response :success
  end

end
