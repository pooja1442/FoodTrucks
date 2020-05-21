class ProductsController < ApplicationController

  def new
    @vendor = Vendor.find(params[:vendor_id])
    @product = @vendor.products.build
  end

  def create
    @vendor = Vendor.find(params[:vendor_id])
    @product = Product.new(productParams)
    @vendor.products.create(productParams)
    redirect_to vendor_products_path
  end

  def index
    @vendor = Vendor.find(params[:vendor_id])
    @products = Product.all.where(vendor_id: @vendor.id)
  end

  def edit
    @vendor = Vendor.find(params[:vendor_id])
    @product = Product.find(params[:id])
  end

  def update
    @vendor = Vendor.find(params[:vendor_id])
    @product = @vendor.products.find(params[:id])
    if @product.update(productParams)
        redirect_to vendor_products_path
    else
      render :edit
    end
  end
  private

  def productParams
    params.require(:product).permit( :name , :cost_in_dollars , :description , :menu_category , :tags , :availability , :is_popular , :feature_image , choices_attributes: [:id, :name, :_destroy])
  end
end