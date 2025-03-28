class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.text :comment, null: false
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
    add_index :bookmarks, [:movie_id, :list_id], unique: true
  end
end
