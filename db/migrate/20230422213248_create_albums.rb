class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.integer :year
      t.string :genre
      t.string :desc
      t.string :image_url
      t.float :price

      t.timestamps
    end
  end
end
