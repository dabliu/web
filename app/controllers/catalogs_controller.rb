class CatalogsController < ApplicationController
  def show
    catalog = Catalog.find_by_name params.fetch(:id)
    images = catalog.images.order(:position)
    render :show, locals: { images: images }
  end
end
