class CreateWatches < ActiveRecord::Migration[6.1]
  def change
    create_table :watches do |t|

      t.string :model
      t.string :brand

      t.timestamps
    end
  end
end
