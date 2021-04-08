class AddCourseDescToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :course_desc, :string
  end
end
