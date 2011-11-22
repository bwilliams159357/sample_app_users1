class UsersController < ApplicationController
  def new
    @title = "Sign up"
    @user = User.new
  end

  def create
    @user = User.new()
    if @user.save
      redirect_to user_path(@user)
    else
      @title = "Sign Up"
      render 'new'
    end
  end
end
