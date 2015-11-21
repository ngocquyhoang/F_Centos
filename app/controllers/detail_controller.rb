class DetailController < ApplicationController
  def index
  	if user_signed_in?
  		@user_logs = current_user.user_logs
  	end
  end
end
