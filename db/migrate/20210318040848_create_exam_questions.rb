class CreateExamQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :exam_questions do |t|
    	t.integer :question_id
    	t.integer :exam_id
      t.timestamps
    end
  end
end
