class ExamsController < ApplicationController
	before_action :find_exam, only: [:show]
	def show
	end

	private
	def find_exam
		@exam = Exam.find_by course_id: params[:course_id]
		unless @exam.present?
			flash[:success] = "Exam doesn't exist"
			redirect_to categories_path
		end
	end
end