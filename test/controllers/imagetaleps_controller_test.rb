require 'test_helper'

class ImagetalepsControllerTest < ActionController::TestCase
  setup do
    @imagetalep = imagetaleps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagetaleps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagetalep" do
    assert_difference('Imagetalep.count') do
      post :create, imagetalep: { gonderen_mail: @imagetalep.gonderen_mail, gonderen_name: @imagetalep.gonderen_name, gonderen_tc: @imagetalep.gonderen_tc, image_tur: @imagetalep.image_tur }
    end

    assert_redirected_to imagetalep_path(assigns(:imagetalep))
  end

  test "should show imagetalep" do
    get :show, id: @imagetalep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagetalep
    assert_response :success
  end

  test "should update imagetalep" do
    patch :update, id: @imagetalep, imagetalep: { gonderen_mail: @imagetalep.gonderen_mail, gonderen_name: @imagetalep.gonderen_name, gonderen_tc: @imagetalep.gonderen_tc, image_tur: @imagetalep.image_tur }
    assert_redirected_to imagetalep_path(assigns(:imagetalep))
  end

  test "should destroy imagetalep" do
    assert_difference('Imagetalep.count', -1) do
      delete :destroy, id: @imagetalep
    end

    assert_redirected_to imagetaleps_path
  end
end
