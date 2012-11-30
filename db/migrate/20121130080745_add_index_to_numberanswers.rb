class AddIndexToNumberanswers < ActiveRecord::Migration
  def change
    add_index :numberanswers , :question_id
  end
end
