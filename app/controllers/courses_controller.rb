class CoursesController < ApplicationController
  before_action :find_course, only: [:show]
  before_action :find_exam, only: [:show]
  def index
  	@courses = Course.all
  end
  
  def show
    @questions = @exam.questions
    if params[:question_id].present?
      @question = @questions.find_by(id: params[:question_id])
      @answers = @question.answers
      respond_to do |format|
        format.html { redirect_to course_path }
        format.js
      end
    else
      @question = @questions.first
      @answers = @question.answers
    end
  end

  private
  def find_course
    @course = Course.find_by id: params[:id]
    unless @course.present?
     flash[:success] = "Course doesn't exist"
     redirect_to root_path
   end
 end

 def find_exam
  @exam = current_user.exams.find_by(course_id: params[:id])
  unless @exam.present?
    flash[:success] = "Exam doesn't exist"
    redirect_to categories_path
  end
end

end