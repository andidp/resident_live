class VideoGalleriesController < ApplicationController
  before_action :set_video_gallery, only: [:show, :edit, :update, :destroy]

  # GET /video_galleries
  # GET /video_galleries.json
  def index
    @video_galleries = VideoGallery.all
  end

  # GET /video_galleries/1
  # GET /video_galleries/1.json
  def show
  end

  # GET /video_galleries/new
  def new
    @video_gallery = VideoGallery.new
  end

  # GET /video_galleries/1/edit
  def edit
  end

  # POST /video_galleries
  # POST /video_galleries.json
  def create
    @video_gallery = VideoGallery.new(video_gallery_params)

    respond_to do |format|
      if @video_gallery.save
        format.html { redirect_to @video_gallery, notice: 'Video gallery was successfully created.' }
        format.json { render :show, status: :created, location: @video_gallery }
      else
        format.html { render :new }
        format.json { render json: @video_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_galleries/1
  # PATCH/PUT /video_galleries/1.json
  def update
    respond_to do |format|
      if @video_gallery.update(video_gallery_params)
        format.html { redirect_to @video_gallery, notice: 'Video gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_gallery }
      else
        format.html { render :edit }
        format.json { render json: @video_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_galleries/1
  # DELETE /video_galleries/1.json
  def destroy
    @video_gallery.destroy
    respond_to do |format|
      format.html { redirect_to video_galleries_url, notice: 'Video gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_gallery
      @video_gallery = VideoGallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_gallery_params
      params.require(:video_gallery).permit(:album_id, :title, :video, :description, :created_at, :updated_at)
    end
end
