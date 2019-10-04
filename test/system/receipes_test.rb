require "application_system_test_case"

class ReceipesTest < ApplicationSystemTestCase
  setup do
    @receipe = receipes(:one)
  end

  test "visiting the index" do
    visit receipes_url
    assert_selector "h1", text: "Receipes"
  end

  test "creating a Receipe" do
    visit receipes_url
    click_on "New Receipe"

    fill_in "Collection", with: @receipe.collection_id
    fill_in "Cooking time minutes", with: @receipe.cooking_time_minutes
    fill_in "Difficulty level", with: @receipe.difficulty_level
    fill_in "How to cook", with: @receipe.how_to_cook
    fill_in "Image url", with: @receipe.image_url
    fill_in "Ingredients", with: @receipe.ingredients
    fill_in "Prep time minutes", with: @receipe.prep_time_minutes
    fill_in "Receipe name", with: @receipe.receipe_name
    fill_in "Servings", with: @receipe.servings
    click_on "Create Receipe"

    assert_text "Receipe was successfully created"
    click_on "Back"
  end

  test "updating a Receipe" do
    visit receipes_url
    click_on "Edit", match: :first

    fill_in "Collection", with: @receipe.collection_id
    fill_in "Cooking time minutes", with: @receipe.cooking_time_minutes
    fill_in "Difficulty level", with: @receipe.difficulty_level
    fill_in "How to cook", with: @receipe.how_to_cook
    fill_in "Image url", with: @receipe.image_url
    fill_in "Ingredients", with: @receipe.ingredients
    fill_in "Prep time minutes", with: @receipe.prep_time_minutes
    fill_in "Receipe name", with: @receipe.receipe_name
    fill_in "Servings", with: @receipe.servings
    click_on "Update Receipe"

    assert_text "Receipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Receipe" do
    visit receipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Receipe was successfully destroyed"
  end
end
