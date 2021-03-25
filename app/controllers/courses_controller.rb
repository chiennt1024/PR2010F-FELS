class CoursesController < ApplicationController
  before_action :find_course, only: [:show]
  def index
  	@courses = Course.all
  end
  
  def show
  end

  private
  def find_course
    @course = Course.find_by id: params[:id]
    unless @course.present?
     flash[:success] = "Course doesn't exist"
     redirect_to root_path
   end
 end
end