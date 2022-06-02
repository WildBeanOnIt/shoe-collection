class ShoesController < ApplicationController

    get "/shoes" do
        if logged_in?
            @shoes = Shoe.all
            erb :"shoes/index"
        else
            redirect to "/login"
        end
    end
end