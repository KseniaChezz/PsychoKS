require 'test_helper'

class BoardInProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @board_in_project = board_in_projects(:one)
  end

  test "should get index" do
    get board_in_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_board_in_project_url
    assert_response :success
  end

  test "should create board_in_project" do
    assert_difference('BoardInProject.count') do
      post board_in_projects_url, params: { board_in_project: { board_id: @board_in_project.board_id, project_id: @board_in_project.project_id } }
    end

    assert_redirected_to board_in_project_url(BoardInProject.last)
  end

  test "should show board_in_project" do
    get board_in_project_url(@board_in_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_board_in_project_url(@board_in_project)
    assert_response :success
  end

  test "should update board_in_project" do
    patch board_in_project_url(@board_in_project), params: { board_in_project: { board_id: @board_in_project.board_id, project_id: @board_in_project.project_id } }
    assert_redirected_to board_in_project_url(@board_in_project)
  end

  test "should destroy board_in_project" do
    assert_difference('BoardInProject.count', -1) do
      delete board_in_project_url(@board_in_project)
    end

    assert_redirected_to board_in_projects_url
  end
end
