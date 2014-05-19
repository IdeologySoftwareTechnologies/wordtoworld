class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :album_cover
      t.integer :album_type
      t.boolean :status
      t.references :admin, index: true

      t.timestamps
    end
  end
end
