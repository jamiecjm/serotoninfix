class BlogsController < ApplicationController

	def show
		@blog = Blog.find_by(handle: params[:id])
		@posts = @blog.blog_posts
	end
end
