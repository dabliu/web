class CatalogsController < ApplicationController
  def show
    @catalog = Catalog.find_by_name params.fetch(:id)
  end
end
