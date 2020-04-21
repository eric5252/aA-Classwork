class ApplicationController < ActionController::Base
    helper_method :current_user
    before_action :back_to_index, only: [:new, :create]
    def current_user
        return nil unless session[:session_token]
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def login!(user)
        session[:session_token] = user.reset_session_token!
    end

    def logged_in?
        !!current_user
    end

    def back_to_index
        redirect_to cats_url if logged_in?
    end
end
