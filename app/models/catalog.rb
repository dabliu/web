class Catalog < ApplicationRecord
  attr_readonly :name

  has_many :items,
    class_name: "Catalog::Item",
    inverse_of: :catalog

  accepts_nested_attributes_for :items,
    allow_destroy: true
end
