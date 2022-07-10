class AddApprovedColum < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :approved, :boolean
  end
end
