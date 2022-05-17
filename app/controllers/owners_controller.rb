class OwnersController < ApplicationController

    # shows the form to login page.
    get "/login" do
        erb :"owners/login"
    end

    # will talk to the 'login' Form to log in the usr.
    post "/login" do 
        # Find the user
        user = Owner.find_by(username: params[:username])
        # auth. user
        if @user.authenticate(params[:password])
            # if good log in the usr
            session[:user_id] = @owner.id
            # redirect to urs page landing page
            redirect to :"owners/#{@owner.id}"
        else
            # redirect them to a signup if faild to Login
        end
    end

    # shows the login form for new users.
    get "/signup" do
        erb :"owners/signup"
    end

    # will add a new user to the database
    post "/signup" do
        if params[:username] == "" || params[:email] == "" || params["password"] == ""
            redirect to "/signup"
        else
            @user = Owner.new(:username => params(:username), :email => params(:email), :password => params(:password))
            @user.save
            session[:user_id] = @owner.id
        end
    end

    # get "/user/:id" do

    # end
end