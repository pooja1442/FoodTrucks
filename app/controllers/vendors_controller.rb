class VendorsController < ApplicationController

  def new 
    @vendor = Vendor.new
    @vendor.build_tax
  end

  def create
    @vendor = Vendor.new(vendorParams)
    @vendor.user_id = current_user.id if current_user
    puts @vendor.user_id
    if @vendor.save
      flash[:success] = "Food Truck registered Sucessfully"
      redirect_to @vendor
    else
      render :new
    end
  end

  def show
    @vendor = Vendor.find(params[:id])
  end
  private
  def vendorParams
    params.require(:vendor).permit(:name , :tagline , :description ,:default_fulfillment_time_in_minutes , :price_point , :feature_image ,   tax_attributes: [:description , :amount , :is_percentage] ,category_ids: [] , city_ids: [])
  end
end
