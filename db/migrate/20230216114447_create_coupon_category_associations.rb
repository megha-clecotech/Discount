class CreateCouponCategoryAssociations < ActiveRecord::Migration[7.0]
  def change
    create_table :coupon_category_associations do |t|
      t.references :coupon, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
