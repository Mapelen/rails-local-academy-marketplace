class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin
    user = User.find_for_linkedin_oauth(request.env['omniauth.auth'])

    if user.persisted?
      sign_in_and_redirect user, event: :authentication
      set_flash_message(:notice, :success, kind: 'linkedin') if is_navigational_format?
    else
      # session['devise.linkedin_data'] = request.env['omniauth.auth']
      set_flash_message(:notice, :success, kind: 'linkedin') if is_navigational_format?
      redirect_to home_path
    end
  end
end
