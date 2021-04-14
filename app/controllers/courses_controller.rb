class CoursesController < ApplicationController
  before_action :find_course, only: [:show]
  def index
    if params[:category].present?
      @courses = Course.where(category_id: params[:category])
    elsif params[:course].present?
      Course.reindex
      @courses = Course.search params[:course]
    else
  	  @pagy, @courses = pagy(Course.all, items: 10)
    end
 
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