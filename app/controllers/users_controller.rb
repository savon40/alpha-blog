class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Welcome to the Blog #{@user.username}"
            #for this flash message, it had to be in double-quotes to display the inbedded ruby
            redirect_to articles_path
        else
           render 'new' 
           #this will display error messages on the current page
        end
    end
    
    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
