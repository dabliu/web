class Catalog < ApplicationRecord
  has_many :images, class_name: "CatalogImage", inverse_of: :catalog
  accepts_nested_attributes_for :images, allow_destroy: true
end
