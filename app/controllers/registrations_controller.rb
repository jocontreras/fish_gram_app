class RegistrationsController < Devise::RegistrationsController
   include Devise::Controllers::Helpers

  def create
    super
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end


end
