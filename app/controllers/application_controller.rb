class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    

    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up,keys:[:name, :phone, :email, :password])
            
        end
        def after_sign_in_path_for(resource)
            if admin_signed_in?
                  root_path
            else
                root_path 
            end          
          end
end