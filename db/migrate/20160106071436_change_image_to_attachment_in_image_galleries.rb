class ChangeImageToAttachmentInImageGalleries < ActiveRecord::Migration
  def change
      add_attachment :image_galleries, :image
  end
end
