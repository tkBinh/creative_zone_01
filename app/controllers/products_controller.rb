class ProductsController < ApplicationController
  def new
    @product = Product.new
    @categories = Category.all.map{|c| [ c.title, c.id ] }
  end

  def show
  end

  def edit
  end
end
