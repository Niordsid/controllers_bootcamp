class CreateProducts < ActiveRecord::Migration[5.2]
  def up
    create_table :products do |t|
      t.string :name, null: false
      t.string :summary
      t.float :price, null: false
      t.timestamps null: false
    end
  end

  def down
    drop_table :products
  end
end
