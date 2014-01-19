require 'test_helper'

class ToolsControllerTest < ActionController::TestCase
  setup do
    @tool = tools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tool" do
    assert_difference('Tool.count') do
      post :create, tool: { added_by: @tool.added_by, added_on: @tool.added_on, outdated: @tool.outdated, owned_by: @tool.owned_by, purpose: @tool.purpose, title: @tool.title, title_link: @tool.title_link }
    end

    assert_redirected_to tool_path(assigns(:tool))
  end

  test "should show tool" do
    get :show, id: @tool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tool
    assert_response :success
  end

  test "should update tool" do
    patch :update, id: @tool, tool: { added_by: @tool.added_by, added_on: @tool.added_on, outdated: @tool.outdated, owned_by: @tool.owned_by, purpose: @tool.purpose, title: @tool.title, title_link: @tool.title_link }
    assert_redirected_to tool_path(assigns(:tool))
  end

  test "should destroy tool" do
    assert_difference('Tool.count', -1) do
      delete :destroy, id: @tool
    end

    assert_redirected_to tools_path
  end
end
