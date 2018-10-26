require "application_system_test_case"

class BoardInProjectsTest < ApplicationSystemTestCase
  setup do
    @board_in_project = board_in_projects(:one)
  end

  test "visiting the index" do
    visit board_in_projects_url
    assert_selector "h1", text: "Board In Projects"
  end

  test "creating a Board in project" do
    visit board_in_projects_url
    click_on "New Board In Project"

    fill_in "Board", with: @board_in_project.board_id
    fill_in "Project", with: @board_in_project.project_id
    click_on "Create Board in project"

    assert_text "Board in project was successfully created"
    click_on "Back"
  end

  test "updating a Board in project" do
    visit board_in_projects_url
    click_on "Edit", match: :first

    fill_in "Board", with: @board_in_project.board_id
    fill_in "Project", with: @board_in_project.project_id
    click_on "Update Board in project"

    assert_text "Board in project was successfully updated"
    click_on "Back"
  end

  test "destroying a Board in project" do
    visit board_in_projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Board in project was successfully destroyed"
  end
end
