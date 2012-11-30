class AddIndexToDateanswers < ActiveRecord::Migration
  def change
    add_index  :dateanswers,  :question_id
  end
end
