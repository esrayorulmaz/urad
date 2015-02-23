require 'test_helper'

class IletisimsControllerTest < ActionController::TestCase
  setup do
    @iletisim = iletisims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iletisims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iletisim" do
    assert_difference('Iletisim.count') do
      post :create, iletisim: { content: @iletisim.content, sender: @iletisim.sender, title: @iletisim.title }
    end

    assert_redirected_to iletisim_path(assigns(:iletisim))
  end

  test "should show iletisim" do
    get :show, id: @iletisim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iletisim
    assert_response :success
  end

  test "should update iletisim" do
    patch :update, id: @iletisim, iletisim: { content: @iletisim.content, sender: @iletisim.sender, title: @iletisim.title }
    assert_redirected_to iletisim_path(assigns(:iletisim))
  end

  test "should destroy iletisim" do
    assert_difference('Iletisim.count', -1) do
      delete :destroy, id: @iletisim
    end

    assert_redirected_to iletisims_path
  end
end
