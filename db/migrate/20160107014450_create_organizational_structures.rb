class CreateOrganizationalStructures < ActiveRecord::Migration
  def change
    create_table :organizational_structures do |t|
      t.string :name
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
