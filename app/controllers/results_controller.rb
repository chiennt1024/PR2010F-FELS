class ResultsController < ApplicationController
	def show
	end

	private
	def find_result
		@result = current_user.exams.find_by(course_id: params[:id])
		unless @exam.present?
			flash[:success] = "Exam doesn't exist"
			redirect_to categories_path
		end
	end
	
end