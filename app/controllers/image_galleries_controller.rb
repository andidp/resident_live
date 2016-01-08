class ImageGalleriesController < ApplicationController
  before_action :set_image_gallery, only: [:show, :edit, :update, :destroy]

  # GET /image_galleries
  # GET /image_galleries.json
  def index
    @image_galleries = ImageGallery.all
  end

  # GET /image_galleries/1
  # GET /image_galleries/1.json
  def show
  end

  # GET /image_galleries/new
  def new
    @image_gallery = ImageGallery.new
    #@albums = @image_gallery.album
  end

  # GET /image_galleries/1/edit
  def edit
  end

  # POST /image_galleries
  # POST /image_galleries.json
  def create
    @image_gallery = ImageGallery.new(image_gallery_params)

    respond_to do |format|
      if @image_gallery.save
        format.html { redirect_to @image_gallery, notice: 'Image gallery was successfully created.' }
        format.json { render :show, status: :created, location: @image_gallery }
      else
        format.html { render :new }
        format.json { render json: @image_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_galleries/1
  # PATCH/PUT /image_galleries/1.json
  def update
    respond_to do |format|
      if @image_gallery.update(image_gallery_params)
        format.html { redirect_to @image_gallery, notice: 'Image gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_gallery }
      else
        format.html { render :edit }
        format.json { render json: @image_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_galleries/1
  # DELETE /image_galleries/1.json
  def destroy
    @image_gallery.destroy
    respond_to do |format|
      format.html { redirect_to image_galleries_url, notice: 'Image gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_gallery
      @image_gallery = ImageGallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_gallery_params
      params.require(:image_gallery).permit(:title, :image, :description, :album_id, :created_at, :updated_at)
    end
end
