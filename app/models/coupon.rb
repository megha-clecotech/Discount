class Coupon < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :feedbacks, dependent: :destroy
  has_one_attached :coupon_file
end