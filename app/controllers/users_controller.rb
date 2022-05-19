class UsersController < ApplicationController

    # shows the form to login page.
    get "/login" do
        erb :"users/login"
    end

    # will talk to the 'login' Form to log in the usr.
    post "/login" do 
        # Find the user
        user = Users.find_by(username: params[:username])
        # auth. user
        if @user.authenticate(params[:password])
            # if good log in the usr
            session[:user_id] = @user.id
            # redirect to urs page landing page
            redirect to :"users/#{@user.id}"
        else
            # redirect them to a signup if faild to Login
        end
    end

    # shows the login form for new users.
    get "/signup" do
        if !logged_in?
            erb :"users/signup"
        else
            redirect to "/index_shoe"
        end
    end

    # will add a new user to the database
    post "/signup" do
        if params[:username] == "" || params[:email] == "" || params[:password] == ""
            @user = User.create(params)
            redirect to "/user/#{@user.id}"
        else
            # @user = user.new(:username => params(:username), :email => params(:email), :password => params(:password))
            # @user.save
            # session[:user_id] = @user.id
            # redirect to "/index_shoe"
        end
    end

    get "/user/:id" do
        @user = User.find_by(id: params[:id])
        erb :"shoes/index_shoe"
    end
end