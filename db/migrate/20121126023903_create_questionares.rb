class CreateQuestionares < ActiveRecord::Migration
  def change
    create_table :questionares do |t|
      t.integer :user_id
      t.string :questionare_name

      t.timestamps
    end
    add_index :questionares, :user_id
  end
end
