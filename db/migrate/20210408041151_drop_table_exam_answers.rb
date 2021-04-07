class DropTableExamAnswers < ActiveRecord::Migration[6.1]
  def change
  	drop_table :exam_answers
  end
end
