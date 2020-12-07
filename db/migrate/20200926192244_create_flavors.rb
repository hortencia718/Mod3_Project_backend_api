class CreateFlavors < ActiveRecord::Migration[6.0]
  def change
    create_table :flavors do |t|
      t.string :name
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
