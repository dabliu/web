class Catalog::Item::Image < Catalog::Item
  validates :file, presence: true
end
