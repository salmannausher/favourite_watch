class ApplicationController < ActionController::Base
    helper_method :logged_in?, :current_user
    # before_action :check_user
    # before_filter :check_user, :except=>[:new, :create]
    def current_user
      if session[:user_id]
        @user = User.find(session[:user_id])
      end
    end
  
    def logged_in?
      !!current_user
    end
  
    def authorized
      redirect_to login_path unless logged_in?
    end

    private

    # def check_user
    #   if logged_in?
    #       redirect_to dashboard_path
    #   else
    #     redirect_to root_path
    #   end
    # end
    

  end