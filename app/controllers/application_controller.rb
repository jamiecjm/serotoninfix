class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :get_navigation

  def get_navigation
  	@navi_blogs = Blog.all
  end
end
