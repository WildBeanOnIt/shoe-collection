class UsersController < ApplicationController
    
    # shows the Sign Up form for new users.
    get "/signup" do
        # if !logged_in?
            erb :"users/signup"
        # else
        #     redirect to "/index"
        # end
    end

    # post "/signup" do


    #shows the login Form for excisting users.
    get "/login" do
        erb :"users/login"
    end

    post "/login" do
        @user = User.find_by(username: params[:username])
        # auth. the user 
        if @user.authenticate(params[:password])
            # create a user session
            binding.pry
        else
            # redirect them to signup form and tell them info is wrong
        end
    end
end