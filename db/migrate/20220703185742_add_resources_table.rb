class AddResourcesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.column :name, :string
      t.column :website, :string
      t.column :category, :string
      t.column :address, :string
      t.column :provided, :string
    end
  end
end
