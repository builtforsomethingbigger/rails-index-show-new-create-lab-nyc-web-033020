class CouponsController < ApplicationController
    def index
        @coupon = Coupon.all
    end
    
    def new
        @coupon = Coupon.new
    end
    
    def create
        @coupon = Coupon.create(coupon_params(:coupon_code, :store))
        @coupon.save
        redirect_to coupon_path(@coupon)
    end
        
    def show
        @coupon = Coupon.find(params[:id])
    end


    private
    def coupon_params(*args)
        params.require(:coupon).permit(*args)
    end
    
end
