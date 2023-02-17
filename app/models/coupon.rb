class Coupon < ApplicationRecord
  belongs_to :user
  has_one_attached :coupon_file
end
