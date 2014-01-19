require 'test_helper'

class RackInstallationsControllerTest < ActionController::TestCase
  setup do
    @rack_installation = rack_installations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rack_installations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rack_installation" do
    assert_difference('RackInstallation.count') do
      post :create, rack_installation: { added_by: @rack_installation.added_by, added_on: @rack_installation.added_on, outdated: @rack_installation.outdated, owned_by: @rack_installation.owned_by, purpose: @rack_installation.purpose, title: @rack_installation.title, title_link: @rack_installation.title_link }
    end

    assert_redirected_to rack_installation_path(assigns(:rack_installation))
  end

  test "should show rack_installation" do
    get :show, id: @rack_installation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rack_installation
    assert_response :success
  end

  test "should update rack_installation" do
    patch :update, id: @rack_installation, rack_installation: { added_by: @rack_installation.added_by, added_on: @rack_installation.added_on, outdated: @rack_installation.outdated, owned_by: @rack_installation.owned_by, purpose: @rack_installation.purpose, title: @rack_installation.title, title_link: @rack_installation.title_link }
    assert_redirected_to rack_installation_path(assigns(:rack_installation))
  end

  test "should destroy rack_installation" do
    assert_difference('RackInstallation.count', -1) do
      delete :destroy, id: @rack_installation
    end

    assert_redirected_to rack_installations_path
  end
end
