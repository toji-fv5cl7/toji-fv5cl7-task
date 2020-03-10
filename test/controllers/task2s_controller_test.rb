require 'test_helper'

class Task2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task2 = task2s(:one)
  end

  test "should get index" do
    get task2s_url
    assert_response :success
  end

  test "should get new" do
    get new_task2_url
    assert_response :success
  end

  test "should create task2" do
    assert_difference('Task2.count') do
      post task2s_url, params: { task2: { body: @task2.body, title: @task2.title } }
    end

    assert_redirected_to task2_url(Task2.last)
  end

  test "should show task2" do
    get task2_url(@task2)
    assert_response :success
  end

  test "should get edit" do
    get edit_task2_url(@task2)
    assert_response :success
  end

  test "should update task2" do
    patch task2_url(@task2), params: { task2: { body: @task2.body, title: @task2.title } }
    assert_redirected_to task2_url(@task2)
  end

  test "should destroy task2" do
    assert_difference('Task2.count', -1) do
      delete task2_url(@task2)
    end

    assert_redirected_to task2s_url
  end
end
