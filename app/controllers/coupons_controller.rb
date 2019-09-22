class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
    end

    def create
        @coupon = Coupon.create(coupon_params)

        redirect_to coupon_path(@coupon)
    end

    private

    def coupon_params
        a = params.require(:coupon).permit(:store, :coupon_code)
    end
end