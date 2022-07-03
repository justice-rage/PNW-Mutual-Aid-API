class AddResourcesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :website
      t.string :category
      t.string :address
      t.string :provided
      

      t.timestamps
    end
  end
end
