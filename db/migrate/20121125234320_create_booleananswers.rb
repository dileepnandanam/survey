class CreateBooleananswers < ActiveRecord::Migration
  def change
    create_table :booleananswers do |t|
      t.string :content
      t.integer :question_id

      t.timestamps
    end
    add_index  :booleananswers, :question_id, :user_id
  end
end
