require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/tasks.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Task.count, data.length
  end

  test "create" do
    assert_difference "Task.count", 1 do
      post "/tasks.json", params: { title: "Gym", start_time: 5:30:00, end_time: 7:00:00, description: "strenght training, chest and abs"}
      assert_response 200
    end
  end

  test "show" do
    get "/tasks/#{Task.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "start_time", "end_time", "description", "created_at", "updated_at"], data.keys
  end

  test "update" do
    task = Task.first
    patch "/tasks/#{task.id}.json", params: { title: "Updated title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end

  test "destroy" do
    assert_difference "Task.count", -1 do
      delete "/tasks/#{Task.first.id}.json"
      assert_response 200
    end
  end
end
