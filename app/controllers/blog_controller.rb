class BlogController < ApplicationController

  def index
  	@Blog_post = Blog.all
  end

  def post
  end
  
end
