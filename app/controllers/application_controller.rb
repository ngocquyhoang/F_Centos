class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  # adding new action
  def after_sign_up_path_for(resource)
    show_cities_path(resource)
  end
  #before_action :authenticate_user!
end
