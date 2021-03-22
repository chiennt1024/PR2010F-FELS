class CategoriesController < ApplicationController
	before_action :find_category, only: [:show]

	def show
		# @categories = Category.all
	end

	private
	def find_category
		@category = Category.find_by id: params[:id]
		unless @category.present?
			flash[:success] = "Category doesn't exist"
			redirect_to root_path
		end
	end
end