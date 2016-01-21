class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :tite
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
