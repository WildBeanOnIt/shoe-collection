class OwnersController < ApplicationController

    # shows the form to login page.
    get "/login" do
        erb :"owners/login"
    end

    # shows the login form for new users.
    get "/signup" do
        erb :"owners/signup"
    end
end