class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
    	t.string :question_name
      t.timestamps
    end
  end
end