class RemoveImgFromCoupons < ActiveRecord::Migration[7.0]
  def change
    remove_column :coupons, :image_url, :string
  end
end
