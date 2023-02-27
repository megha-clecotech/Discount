class CategoriesController < ApplicationController
    def index
        @categories  = Category.all
    end

    def show
        @category = Category.find(params[:id])
        @coupons = @category.coupons
        @categories  = Category.all
        @arr = []
        @categories.each do |c|
          if c.subcategory.length != 0
             @arr.push(c)
          end
        end
    end

    def send_cat
        cate = params[:cate]
        @category = Category.find(cate)
    end
end
