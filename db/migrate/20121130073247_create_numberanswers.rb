class CreateNumberanswers < ActiveRecord::Migration
  def change
    create_table :numberanswers do |t|
      t.integer :content
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end

  end
end
