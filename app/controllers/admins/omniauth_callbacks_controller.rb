class Admins::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    @admin = Admin.find_for_google_oauth2(request.env["omniauth.auth"])

    if @admin != nil
      set_flash_message(:notice, :succes, :kind => "Google") if is_navigational_format?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.succses", :kind => "Google"
      sign_in @admin, :event => :authentication
      redirect_to admin_horses_path
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
      redirect_to admin_horses_path
    end
  end
end
