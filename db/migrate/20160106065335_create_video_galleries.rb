class CreateVideoGalleries < ActiveRecord::Migration
  def change
    create_table :video_galleries do |t|
      t.integer :album_id
      t.string :title
      t.string :video
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
