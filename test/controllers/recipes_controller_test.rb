require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get recipes_home_url
    assert_response :success
  end

  test "should get new" do
    get recipes_new_url
    assert_response :success
  end

  test "should get edit" do
    get recipes_edit_url
    assert_response :success
  end

  test "should get show" do
    get recipes_show_url
    assert_response :success
  end
end
