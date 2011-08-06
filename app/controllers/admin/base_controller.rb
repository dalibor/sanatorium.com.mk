class Admin::BaseController < ApplicationController
  before_filter :authenticate

  private

    def authenticate
      unless current_user
        flash[:error] = "Access denied."
        redirect_to login_url
      end
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
end
