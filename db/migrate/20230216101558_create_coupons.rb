class CreateCoupons < ActiveRecord::Migration[7.0]
  def change
    create_table :coupons do |t|
      t.string :title
      t.string :description
      t.string :code
      t.string :image_url
      t.date :expiry_date
      t.string :coins_needed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
