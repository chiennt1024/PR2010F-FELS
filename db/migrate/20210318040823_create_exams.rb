class CreateExams < ActiveRecord::Migration[6.1]
  def change
    create_table :exams do |t|
    	t.string :name
    	t.integer :user_id
    	t.integer :course_id
    	t.integer :number_question
      t.timestamps
    end
  end
end
