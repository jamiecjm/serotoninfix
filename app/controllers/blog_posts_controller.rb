class BlogPostsController < ApplicationController

	def show
		@post = BlogPost.find_by(handle: params[:id])
	end

end
