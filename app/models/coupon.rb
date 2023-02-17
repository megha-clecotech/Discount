class Coupon < ApplicationRecord
  belongs_to :user
  has_many :categories , through: :coupon_category_associations
  has_one_attached :coupon_file
end
