class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    before_filter :configure_permitted_parameters, if: :devise_controller?

    protected
    config.to_prepare do
        Devise::SessionsController.layout "Sign_In"
        Devise::RegistrationsController.layout "Sign_In"
        Devise::ConfirmationsController.layout "Sign_In"
        Devise::UnlocksController.layout "Sign_In"
        Devise::PasswordsController.layout "Sign_In"
    end
    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password) }
    end
end
