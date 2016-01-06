class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :name
      t.string :type
      t.string :venue
      t.date :implementation_date
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
