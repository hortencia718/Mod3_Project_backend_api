class CreatePurchasedLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :purchased_logs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :flavor, null: false, foreign_key: true
      t.belongs_to :topping, null: false, foreign_key: true
      t.belongs_to :milk, null: false, foreign_key: true
      t.belongs_to :scoop, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
