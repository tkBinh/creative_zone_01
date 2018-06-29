class CategoriesController < ApplicationController
  before_action :find_category, only: :show

  def show; end

  private

  def find_category
    @category = Category.find_by id: params[:id]
    return if @category
    flash[:danger] = t "categories.cate_notfound"
    redirect_to root_path
  end
end
