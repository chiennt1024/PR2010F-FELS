class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
    	t.integer :question_id
    	t.integer :answer_id
    	t.integer :exam_id

      t.timestamps
    end
  end
end
