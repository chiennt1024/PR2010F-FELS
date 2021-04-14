class ChangeCourseDescInCourse < ActiveRecord::Migration[6.1]
  def change
    change_column :courses, :course_desc, :text
  end
end
