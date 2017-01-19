class SessionController < ApplicationController
  before_action :set_user, except: :new

  def new
  end

  def create
    if !!@user.authenticate(params[:user_password])
      session[:user_id] = @user.id
      redirect_to users_path
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_user
    @user = User.find_by(name: params[:user_name])
  end
end
