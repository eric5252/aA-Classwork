class SessionsController < ApplicationController

    def create
        user = User.find_by_credentials(
                params[:user][:user_name], 
                params[:user][:password])
        if user
            login!(user)
            redirect_to cats_url
        else
            redirect_to new_session_url
        end
    end

    def new 
           before_action redirect_to cats_url if current_user
       
            render :new
    end

    def destroy 
        user = current_user
        user.try(:reset_session_token!)
        session[:session_token] = nil
        @current_user = nil
    end
    
        
end
