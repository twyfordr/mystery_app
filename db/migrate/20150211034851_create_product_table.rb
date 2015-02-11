class CreateProductTable < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.timestamps
    end
  end

  def down
  end
end
