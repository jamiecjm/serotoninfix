class BlogPostsController < ApplicationController

	def show
		@post = BlogPost.find_by(handle: params[:id])
		# render :show, layout: 'panel'
	end

end
