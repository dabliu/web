class CreateCatalogImages < ActiveRecord::Migration[5.0]
  def change
    create_table :catalog_images do |t|
      t.integer :position
      t.string :file
      t.references :catalog, foreign_key: true

      t.timestamps
    end
  end
end
