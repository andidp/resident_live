class CreateImageGalleries < ActiveRecord::Migration
  def change
    create_table :image_galleries do |t|
      t.string :title
      t.string :image
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
