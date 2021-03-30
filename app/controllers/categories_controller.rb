class CategoriesController < ApplicationController
	before_action :find_category, only: [:show]

	def index
		@categories = Category.all
	end

	def show
		# @courses = Course.where(category_id: params[:id])
		@categories = Category.all
		@courses = @category.courses
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