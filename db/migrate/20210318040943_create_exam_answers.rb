class CreateExamAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :exam_answers do |t|
    	t.integer :answer_id
    	t.integer :exam_id
      t.timestamps
    end
  end
end
