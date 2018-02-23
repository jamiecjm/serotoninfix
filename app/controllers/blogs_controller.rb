class BlogsController < ApplicationController

	def index
		@posts = BlogPost.includes(:blog).where(published?: true).order('published_at DESC')
		# render :index, layout: 'panel'
	end

	def show
		@blog = Blog.find_by(handle: params[:id])
		@posts = @blog.blog_posts
	end
end
