require 'test_helper'

class VideoGalleriesControllerTest < ActionController::TestCase
  setup do
    @video_gallery = video_galleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_galleries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_gallery" do
    assert_difference('VideoGallery.count') do
      post :create, video_gallery: { album_id: @video_gallery.album_id, created_at: @video_gallery.created_at, description: @video_gallery.description, title: @video_gallery.title, updated_at: @video_gallery.updated_at, video: @video_gallery.video }
    end

    assert_redirected_to video_gallery_path(assigns(:video_gallery))
  end

  test "should show video_gallery" do
    get :show, id: @video_gallery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_gallery
    assert_response :success
  end

  test "should update video_gallery" do
    patch :update, id: @video_gallery, video_gallery: { album_id: @video_gallery.album_id, created_at: @video_gallery.created_at, description: @video_gallery.description, title: @video_gallery.title, updated_at: @video_gallery.updated_at, video: @video_gallery.video }
    assert_redirected_to video_gallery_path(assigns(:video_gallery))
  end

  test "should destroy video_gallery" do
    assert_difference('VideoGallery.count', -1) do
      delete :destroy, id: @video_gallery
    end

    assert_redirected_to video_galleries_path
  end
end
