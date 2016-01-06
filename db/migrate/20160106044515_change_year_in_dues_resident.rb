class ChangeYearInDuesResident < ActiveRecord::Migration
  def change
      change_column :dues_residents, :year, :date
  end
end
