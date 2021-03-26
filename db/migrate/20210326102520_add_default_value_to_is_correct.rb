class AddDefaultValueToIsCorrect < ActiveRecord::Migration[6.1]
  def change
    change_column :answers, :is_correct, :boolean, default: false
  end
end
