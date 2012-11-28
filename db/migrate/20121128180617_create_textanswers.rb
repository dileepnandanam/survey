class CreateTextanswers < ActiveRecord::Migration
  def change
    create_table :textanswers do |t|
      t.text :content
      t.integer :question_id
      t.integer :user_id

      t.timestamps
    end
    add_index  :textanswers, :question_id, :user_id
  end
  
end
