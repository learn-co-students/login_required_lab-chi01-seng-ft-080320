class SessionsController < ApplicationController
    before_action :logged_in
    skip_before_action :logged_in, only: [:login, :create]

    def login
    end

    def create
        session[:user] = params[:name]
        redirect_to home_path
    end

    def current_user
    end

    def homepage
    end

    def destroy
        session.delete(:user)
        redirect_to login_path
    end


end
