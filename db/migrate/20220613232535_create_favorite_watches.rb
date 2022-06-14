class CreateFavoriteWatches < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_watches do |t|

      t.belongs_to :watch
      t.belongs_to :user
      t.timestamps
    end
  end
end
