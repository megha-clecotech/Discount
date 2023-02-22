class HomeController < ApplicationController
  def index
    @coupons = Coupon.all
    @categories  = Category.all
    @arr = []
    @categories.each do |c|
      if c.subcategory.length != 0
         @arr.push(c)
      end
    end
  end
  def profile
    @user = current_user
  end
end
