class RemovenumberQuestionFromexams < ActiveRecord::Migration[6.1]
  def change
  	remove_column :exams, :number_question
  end
end