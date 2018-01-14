class RegistrationsController < Devise::RegistrationsController

	private

	def sing_up_params
		params.require(:user).permit(:user_name, :first_name, :last_name, :profile_picture, :date_of_birthday, :email, :password, :password_conformation)
	end

	def account_update_params
		params.require(:user).permit(:user_name, :first_name, :last_name, :profile_picture, :date_of_birthday, :email, :password, :password_conformation, :current_password)
	end

end