class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :coupon

  def self.create_like(coupon , current_user)
    like = Feedback.find_or_initialize_by(coupon_id: coupon.id,user_id: current_user.id)
    if like.like
      like.destroy
    else
      like.like= true
      like.save
    end
  end
  def self.create_dislike(coupon , current_user)
    like = Feedback.find_or_initialize_by(coupon_id: coupon.id,user_id: current_user.id)
    if like.like==false
      like.destroy
    else
      like.like= false
      like.save
    end
  end
end