require 'test_helper'

class ReceipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receipe = receipes(:one)
  end

  test "should get index" do
    get receipes_url
    assert_response :success
  end

  test "should get new" do
    get new_receipe_url
    assert_response :success
  end

  test "should create receipe" do
    assert_difference('Receipe.count') do
      post receipes_url, params: { receipe: { collection_id: @receipe.collection_id, cooking_time_minutes: @receipe.cooking_time_minutes, difficulty_level: @receipe.difficulty_level, how_to_cook: @receipe.how_to_cook, image_url: @receipe.image_url, ingredients: @receipe.ingredients, prep_time_minutes: @receipe.prep_time_minutes, receipe_name: @receipe.receipe_name, servings: @receipe.servings } }
    end

    assert_redirected_to receipe_url(Receipe.last)
  end

  test "should show receipe" do
    get receipe_url(@receipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_receipe_url(@receipe)
    assert_response :success
  end

  test "should update receipe" do
    patch receipe_url(@receipe), params: { receipe: { collection_id: @receipe.collection_id, cooking_time_minutes: @receipe.cooking_time_minutes, difficulty_level: @receipe.difficulty_level, how_to_cook: @receipe.how_to_cook, image_url: @receipe.image_url, ingredients: @receipe.ingredients, prep_time_minutes: @receipe.prep_time_minutes, receipe_name: @receipe.receipe_name, servings: @receipe.servings } }
    assert_redirected_to receipe_url(@receipe)
  end

  test "should destroy receipe" do
    assert_difference('Receipe.count', -1) do
      delete receipe_url(@receipe)
    end

    assert_redirected_to receipes_url
  end
end
