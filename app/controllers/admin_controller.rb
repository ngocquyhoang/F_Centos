class AdminController < ApplicationController
	def index
	end
	def user_log
		@all_user_logs = UserLog.all
	end
	def user_details
		@all_user_details = User.all
	end
	
	def message
		@all_messages = ContactMessage.all
	end
	
	# def add_new_blog
	# 	@blog_post = Blog.new
	# end
	
	def blog_control
		@all_blog = Admin::Blog.all
	end
end
