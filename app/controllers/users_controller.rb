class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to thank_you_url, notice: "You rock!"
    else
      render :new
    end
  end
private

  def user_params
    params.require(:user).permit(:email, :team_id)
  end
end
