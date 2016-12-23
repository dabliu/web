class CatalogsController < ApplicationController
  def show
    catalog = Catalog.find_by_name params.fetch(:id)
    items = catalog.items.order(:position)
    render :show, locals: { items: items }
  end
end
