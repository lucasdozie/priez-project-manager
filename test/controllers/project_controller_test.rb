require 'test_helper'

class ProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get project_index_url
    assert_response :success
  end

  test "should get create" do
    get project_create_url
    assert_response :success
  end

end
