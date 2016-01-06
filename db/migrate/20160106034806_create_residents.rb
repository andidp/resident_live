class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.integer :parent_id
      t.string :name
      t.string :phone
      t.text :address
      t.string :job_status
      t.string :home_number
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
