class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all.order('created_at DESC')
	end

	def show
		@recipe = Recipe.find_by(handle: params[:id])
		render :show, layout: 'panel'
	end

end
