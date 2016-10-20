class CatalogImage < ApplicationRecord
  belongs_to :catalog, inverse_of: :catalog_images
end
