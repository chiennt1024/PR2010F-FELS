class RemoveUserIdFromCourses < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :user_id, :integer
  end
end
