class RegistrationsController < Devise::RegistrationsController

    private
  
    def sign_up_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation, :role)
    end
  
    def account_update_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation, :role, :current_password)
    end
  end