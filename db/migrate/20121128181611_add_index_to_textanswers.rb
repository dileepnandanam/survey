class AddIndexToTextanswers < ActiveRecord::Migration
  def change
    add_index  :textanswers,  :user_id
    add_index  :textanswers,  :question_id
  end
end
