# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController

    before_action :configure_sign_in_params, only: [:create]
    def after_sign_in_path_for(resource)
    	flash[:notie] = "successfully"
        user_path(current_user)
    end
    def after_sign_out_path_for(resource)
    	flash[:notie] = "Signed out successfully."
        root_path
    end
    protected
    def configure_sign_in_params
        devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
    end
end
