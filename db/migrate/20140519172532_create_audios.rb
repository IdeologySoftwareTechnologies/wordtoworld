class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :title
      t.string :audio_file
      t.references :album, index: true
      t.references :admin, index: true

      t.timestamps
    end
  end
end
