class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :page_text
      t.string :page_audio
      t.references :chapter, index: true
      t.references :admin, index: true

      t.timestamps
    end
  end
end
