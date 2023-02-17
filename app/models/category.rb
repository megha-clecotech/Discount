class Category < ApplicationRecord
   has_many :coupons , through: :coupon_category_associations
end
