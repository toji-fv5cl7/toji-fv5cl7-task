require "application_system_test_case"

class Task2sTest < ApplicationSystemTestCase
  setup do
    @task2 = task2s(:one)
  end

  test "visiting the index" do
    visit task2s_url
    assert_selector "h1", text: "Task2s"
  end

  test "creating a Task2" do
    visit task2s_url
    click_on "New Task2"

    fill_in "Body", with: @task2.body
    fill_in "Title", with: @task2.title
    click_on "Create Task2"

    assert_text "Task2 was successfully created"
    click_on "Back"
  end

  test "updating a Task2" do
    visit task2s_url
    click_on "Edit", match: :first

    fill_in "Body", with: @task2.body
    fill_in "Title", with: @task2.title
    click_on "Update Task2"

    assert_text "Task2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Task2" do
    visit task2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task2 was successfully destroyed"
  end
end
