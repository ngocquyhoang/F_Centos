class DetailController < ApplicationController
	def index
		if user_signed_in?
			@user_logs = current_user.user_logs
		end
	end
	def update
		@user_info = UserInfo.create(user_info_params)
		user = current_user
		user.name = @user_info.name
		user.gender = @user_info.gender
		user.age = @user_info.age
		user.address = @user_info.address
		user.p_num = @user_info.p_num
		user.save
		redirect_to :controller => 'detail', :action => 'index'
	end

	def user_info_params
		params.require(:@user_info).permit(:name, :gender, :age, :address, :p_num)
	end
end
