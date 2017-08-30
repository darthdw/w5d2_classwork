class UsersController < ApplicationController
  def new
    render :new
  end

  def create
    user = User.new(user_params)
    if user.save
      login!
      redirect_to subs_url
    else
      flash[:errors] = user.errors.full_message
      render :new
    end
  end

  def delete
  end

  def index
  end

  def show
    @user = User.find_by(id: id)
  end

  def update
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
