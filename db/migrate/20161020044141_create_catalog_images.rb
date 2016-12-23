class CreateCatalogImages < ActiveRecord::Migration[5.0]
  def change
    create_table :catalog_items do |t|
      t.integer :position
      t.string :file
      t.string :youtube_video_id
      t.string :type
      t.references :catalog, foreign_key: true

      t.timestamps
    end
  end
end
