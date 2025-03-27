class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false, unique: true
      t.text :overview, null: false
      t.string :poster_url
      t.float :rating

      t.timestamps
    end
    add_index :movies, :title, unique: true
  end
end
