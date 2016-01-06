class AddAlbumRefToImageGalleries < ActiveRecord::Migration
  def change
    remove_column :image_galleries, :album_id
  end
end
