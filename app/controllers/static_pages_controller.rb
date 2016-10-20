class StaticPagesController < ApplicationController
  def index
    catalog = Catalog.find_by_name!(:home)
    render :index, locals: { catalog: catalog }
  end
end
