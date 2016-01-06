class CreateDuesResidents < ActiveRecord::Migration
  def change
    create_table :dues_residents do |t|
      t.integer :resident_id
      t.string :type
      t.string :year
      t.string :for_month
      t.string :for_week
      t.date :for_date
      t.float :amount
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
