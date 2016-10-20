class CatalogImage < ApplicationRecord
  belongs_to :catalog, inverse_of: :images
  mount_uploader :file, CatalogImageUploader
end
