class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_nav

  def set_nav
    @coupons = Coupon.all
    @categories = Category.all
    @arr = []
    @contact = Contact.new
    @categories.each do |c|
      if c.subcategory.length != 0
        @arr.push(c)
      end
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :coins, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :coins, :email, :password, :current_password) }
  end
end
