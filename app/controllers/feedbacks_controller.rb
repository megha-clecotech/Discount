class FeedbacksController < ApplicationController
    before_action :set_coupon
    def like
        Feedback.create_like(@coupon, current_user)
    end
    def dislike
        Feedback.create_dislike(@coupon, current_user)
    end
    def set_coupon
        debugger
        @coupon = Coupon.find_by(params[:id])
    end 
end
