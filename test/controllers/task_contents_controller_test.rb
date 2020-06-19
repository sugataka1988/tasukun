require 'test_helper'

class TaskContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_content = task_contents(:one)
  end

  test "should get index" do
    get task_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_task_content_url
    assert_response :success
  end

  test "should create task_content" do
    assert_difference('TaskContent.count') do
      post task_contents_url, params: { task_content: { desired_completion_date: @task_content.desired_completion_date, task_content: @task_content.task_content } }
    end

    assert_redirected_to task_content_url(TaskContent.last)
  end

  test "should show task_content" do
    get task_content_url(@task_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_content_url(@task_content)
    assert_response :success
  end

  test "should update task_content" do
    patch task_content_url(@task_content), params: { task_content: { desired_completion_date: @task_content.desired_completion_date, task_content: @task_content.task_content } }
    assert_redirected_to task_content_url(@task_content)
  end

  test "should destroy task_content" do
    assert_difference('TaskContent.count', -1) do
      delete task_content_url(@task_content)
    end

    assert_redirected_to task_contents_url
  end
end
