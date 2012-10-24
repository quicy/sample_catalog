class CatalogController < ApplicationController
  def index
    @products = Product.all
  end

  def recommend
    @products = Product.recommend
  end
end
