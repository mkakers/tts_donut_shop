class CreateDoughnuts < ActiveRecord::Migration
  def change
    create_table :doughnuts do |t|
      t.string :name
      t.string :dough
      t.text :toppings
      t.integer :cost
      t.string :image

      t.timestamps null: false
    end
  end
end
