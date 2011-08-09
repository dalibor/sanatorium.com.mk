class SessionsController < ApplicationController

  layout 'sign'

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_root_url, :notice => 'You have successfully signed in'
    else
      #flash.now.alert = 'Invalid email or password'
      flash.now[:error] = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end