class DropTableExamQuestions < ActiveRecord::Migration[6.1]
  def change
  	drop_table :exam_questions
  end
end
