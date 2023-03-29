class CouponsController < ApplicationController
  before_action :go_to_user_login, only: [:index, :show, :new, :create]

  def index
    @user = current_user
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
      redirect_to new_coupon_path, notice: "coupon successfuly saved "
    end
  end

  def update_user_coins
    newcoin = params[:newcoin]
    current_user.coins = newcoin
    current_user.save
  end

  def search
    if params[:search].blank?
      redirect_to root_path and return
    else
      @parameter = params[:search].downcase
      cat = Category.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
      cou = []
      cat.map do |m|
        cou.push(m.coupons)
      end
      @couponsea = Coupon.all.where("lower(title) LIKE :search OR lower(description) LIKE :search OR lower(app) LIKE :search", search: "%#{@parameter}%")
      cou.map do |c|
        @couponsea = @couponsea + c
      end
    end
  end

  private

  def coupon_params
    params.require(:coupon).permit(:title, :description, :code, :app, :coupon_file, :expiry_date, :coins_needed, :category_id, :user_id)
  end
end
