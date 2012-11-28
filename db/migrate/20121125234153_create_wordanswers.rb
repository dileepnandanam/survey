class CreateWordanswers < ActiveRecord::Migration
  def change
    create_table :wordanswers do |t|
      t.string :content
      t.integer :question_id

      t.timestamps
    end
    add_index  :wordanswers, :question_id, :user_id
  end
end
