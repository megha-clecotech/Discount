class CouponsController < ApplicationController
  def index
    @user = current_user
    @coupons = Coupon.all
  end
  def show 
      @user = current_user
     @coupon = Coupon.find(params[:id])
  end

  def new 
    
    @user = current_user
    @coupon = @user.coupons.new
  end
  def create 
    
    @user = current_user
    @coupon = @user.coupons.new(coupon_params)
    if @coupon.save
      redirect_to home_profile_path(current_user)
    end
  end

  private
    def coupon_params
      params.require(:coupon).permit(:title, :description, :code, :image_url, :expiry_date, :coins_needed, :user_id)
    end
end
