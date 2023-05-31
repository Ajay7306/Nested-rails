require "application_system_test_case"

class PersonalsTest < ApplicationSystemTestCase
  setup do
    @personal = personals(:one)
  end

  test "visiting the index" do
    visit personals_url
    assert_selector "h1", text: "Personals"
  end

  test "should create personal" do
    visit personals_url
    click_on "New personal"

    fill_in "Address", with: @personal.address
    fill_in "Photo", with: @personal.photo
    fill_in "Project", with: @personal.project_id
    click_on "Create Personal"

    assert_text "Personal was successfully created"
    click_on "Back"
  end

  test "should update Personal" do
    visit personal_url(@personal)
    click_on "Edit this personal", match: :first

    fill_in "Address", with: @personal.address
    fill_in "Photo", with: @personal.photo
    fill_in "Project", with: @personal.project_id
    click_on "Update Personal"

    assert_text "Personal was successfully updated"
    click_on "Back"
  end

  test "should destroy Personal" do
    visit personal_url(@personal)
    click_on "Destroy this personal", match: :first

    assert_text "Personal was successfully destroyed"
  end
end
