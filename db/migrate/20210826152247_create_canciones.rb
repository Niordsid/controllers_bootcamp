class CreateCanciones < ActiveRecord::Migration[5.2]
  def change
    create_table :canciones do |t|

      t.timestamps
    end
  end
end
