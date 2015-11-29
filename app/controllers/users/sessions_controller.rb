class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   newLog = UserLog.create user_id: current_user.id , log_data: current_user.email + " is Sign in"
  #   newLog.save
  # end

  # POST /resource/sign_in
  def create
    if current_user.name == ""
      newLog = UserLog.create user_id: current_user.id , log_data: current_user.email + " is Sign in", ip: current_user.current_sign_in_ip
    else
      newLog = UserLog.create user_id: current_user.id , log_data: current_user.name + " is Sign in", ip: current_user.current_sign_in_ip
    end
    newLog.save
    redirect_to root_url
  end

  # DELETE /resource/sign_out
  def destroy
    if current_user.name == ""
      newLog = UserLog.create user_id: current_user.id , log_data: current_user.email + " is Sign out", ip: current_user.current_sign_in_ip
    else
      newLog = UserLog.create user_id: current_user.id , log_data: current_user.name + " is Sign out", ip: current_user.current_sign_in_ip
    end
    newLog.save
    sign_out
    redirect_to root_url
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
