class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :purchase_id
      t.integer :category_id
      t.string :name
      t.decimal :cost
      t.integer :quantity
      t.decimal :total_cost
      t.text :notes

      t.timestamps null: false
    end
  end
end
