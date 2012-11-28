class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content
      t.string :answer_type
      t.integer :questionare_id

      t.timestamps
    end
    add_index :questions, :questionare_id
  end
end
