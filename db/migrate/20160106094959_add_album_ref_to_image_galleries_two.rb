class AddAlbumRefToImageGalleriesTwo < ActiveRecord::Migration
  def change
    add_reference :image_galleries, :album, index: true, foreign_key: true
  end
end
