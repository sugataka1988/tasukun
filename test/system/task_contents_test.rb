require "application_system_test_case"

class TaskContentsTest < ApplicationSystemTestCase
  setup do
    @task_content = task_contents(:one)
  end

  test "visiting the index" do
    visit task_contents_url
    assert_selector "h1", text: "Task Contents"
  end

  test "creating a Task content" do
    visit task_contents_url
    click_on "New Task Content"

    fill_in "Desired completion date", with: @task_content.desired_completion_date
    fill_in "Task content", with: @task_content.task_content
    click_on "Create Task content"

    assert_text "Task content was successfully created"
    click_on "Back"
  end

  test "updating a Task content" do
    visit task_contents_url
    click_on "Edit", match: :first

    fill_in "Desired completion date", with: @task_content.desired_completion_date
    fill_in "Task content", with: @task_content.task_content
    click_on "Update Task content"

    assert_text "Task content was successfully updated"
    click_on "Back"
  end

  test "destroying a Task content" do
    visit task_contents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task content was successfully destroyed"
  end
end
