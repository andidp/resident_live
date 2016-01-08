class AddResidentRefToOrganizationalStructure < ActiveRecord::Migration
  def change
    add_reference :organizational_structures, :resident, index: true, foreign_key: true
  end
end
