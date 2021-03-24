class CreateObjectives < ActiveRecord::Migration[6.1]
  def change
    create_table :objectives do |t|
      t.string :objective_title
      t.integer :course_id

      t.timestamps
    end
  end
end
