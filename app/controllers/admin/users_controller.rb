class Admin::UsersController < Admin::ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to admin_users_path, :notice => "Successfully created user"
    else
      render :action => 'new'
    end
  end

  def update
    @user = current_user

    if @user.update_attributes(params[:user])
      redirect_to edit_admin_user_path, :notice => "Settings were successfully updated"
    else
      render 'edit'
    end
  end
end
