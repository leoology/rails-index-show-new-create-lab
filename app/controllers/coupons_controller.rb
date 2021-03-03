class CouponsController < ApplicationController

    def create 
        @coupons= Coupon.create(store: params[:store], coupon_code: params[:coupon_code])
        redirect_to coupon_path(@coupons)
    end 

    def index
        @coupon=Coupon.all
    end 

    def new
    end 

    def show
        @coupon = Coupon.find(params[:id])
    end

end
