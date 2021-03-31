class Admin::CoursesController < Admin::AdminController
  before_action :set_course, only: %i[ show edit update destroy ]

  def index
    @pagy, @courses = pagy(Course.all, items: 10)
    @course = Course.new
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to admin_courses_path
      notice = 'Courses was successfully created.'
    else
      redirect_to admin_courses_path
      flash[:danger] = @course.error
    end
  end

  def show

  end

  def edit

  end

  def update
    @course.update(course_params)
    flash[:success] = "Course updated"
    redirect_to admin_courses_path
  end

  def destroy
    @course.destroy
    flash[:success] = 'Course deleted'
    redirect_to admin_courses_path
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:course_name, :category_id);
    end
end

