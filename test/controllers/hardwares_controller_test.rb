require 'test_helper'

class HardwaresControllerTest < ActionController::TestCase
  setup do
    @hardware = hardwares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hardwares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hardware" do
    assert_difference('Hardware.count') do
      post :create, hardware: { added_by: @hardware.added_by, added_on: @hardware.added_on, outdated: @hardware.outdated, owned_by: @hardware.owned_by, purpose: @hardware.purpose, title: @hardware.title, title_link: @hardware.title_link }
    end

    assert_redirected_to hardware_path(assigns(:hardware))
  end

  test "should show hardware" do
    get :show, id: @hardware
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hardware
    assert_response :success
  end

  test "should update hardware" do
    patch :update, id: @hardware, hardware: { added_by: @hardware.added_by, added_on: @hardware.added_on, outdated: @hardware.outdated, owned_by: @hardware.owned_by, purpose: @hardware.purpose, title: @hardware.title, title_link: @hardware.title_link }
    assert_redirected_to hardware_path(assigns(:hardware))
  end

  test "should destroy hardware" do
    assert_difference('Hardware.count', -1) do
      delete :destroy, id: @hardware
    end

    assert_redirected_to hardwares_path
  end
end
