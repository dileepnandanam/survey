class CreateDateanswers < ActiveRecord::Migration
  def change
    create_table :dateanswers do |t|
      t.date :content
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
