class User < ApplicationRecord

  has_many :coupons, dependent: :destroy
  has_many :feedbacks, dependent: :destroy

  after_create :assign_default_coins
  def assign_default_coins
    self.update(coins: 0)
  end

  def is_liked(coupon)
    if Feedback.where(:coupon_id => coupon ,:user_id => self.id).present?
      Feedback.where(:coupon_id => model ,:user_id => self.id).last.like==true
    end
  end
  def is_disliked(model)
    if Feedback.where(:coupon_id => coupon ,:user_id => self.id).present?
      Feedback.where(:coupon_id => model ,:user_id => self.id).last.like==false
  end
  end
  def self.find_model(id, type)
    model= type.constantize.find(id)
    return model
  end  


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
