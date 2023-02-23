class Category < ApplicationRecord
   has_many :coupons
   has_many :subcategory, class_name: "Category", foreign_key: "maincategory_id"
   belongs_to :maincategory, class_name: "Category", optional: true
end