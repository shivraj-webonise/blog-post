class UsersController < ApplicationController
    def index
     @user = User.all
    end
  
    def new
      @user = User.new()
    end
  
    def create 
      @user = User.new(user_param)
      if @user.save
        redirect_to login_path
      else
        render 'new'
      end
  
    
    end
  
  
    private 
  
    def user_param
      params.require(:user).permit(:name,:email,:password)
    end
  end
