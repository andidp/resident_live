class AddAlbumIdToImageGalleries < ActiveRecord::Migration
  def change
    add_column :image_galleries, :album_id, :integer
  end
end
