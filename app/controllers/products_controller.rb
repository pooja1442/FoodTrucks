class ProductsController < ApplicationController

  def new
    @vendor = Vendor.find(params[:vendor_id])
    @product = @vendor.products.build
  end

  def create
    @vendor = Vendor.find(params[:vendor_id])
    @product = Product.new(productParams)
    @vendor.products.create(productParams)
    redirect_to @vendor
  end

  def index
    @vendor = Vendor.find(params[:vendor_id])
    @products = Product.all.where(vendor_id: @vendor.id)
  end
  private

  def productParams
    params.require(:product).permit( :name , :cost_in_dollars , :description , :menu_category , :tags , :availability , :is_popular , :feature_image)
  end
end