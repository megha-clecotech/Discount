class AddMainCategoryToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :maincategory_id, :integer
  end
end
