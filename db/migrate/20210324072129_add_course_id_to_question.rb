class AddCourseIdToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :course_id, :integer
  end
end
