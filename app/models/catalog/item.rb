class Catalog::Item < ApplicationRecord
  belongs_to :catalog, inverse_of: :items
  mount_uploader :file, CatalogImageUploader
  validates :type, presence: true
end
