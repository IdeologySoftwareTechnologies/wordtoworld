class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :video_file
      t.boolean :status
      t.references :admin, index: true

      t.timestamps
    end
  end
end
