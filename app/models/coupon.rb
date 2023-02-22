class Coupon < ApplicationRecord
  belongs_to :user
  has_many :coupon_category_associations
  has_many :categories , through: :coupon_category_associations
  has_many :feedbacks, dependent: :destroy
  has_one_attached :coupon_file
end
