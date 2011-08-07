class Admin::UsersController < Admin::ApplicationController
  def edit
    @user = current_user
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
