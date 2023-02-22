class HomeController < ApplicationController
  def index
    @coupons = Coupon.all
  end
  def profile
    @user = current_user
  end
end
