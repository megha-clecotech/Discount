class AddAppToCoupons < ActiveRecord::Migration[7.0]
  def change
    add_column :coupons, :app, :string
  end
end
