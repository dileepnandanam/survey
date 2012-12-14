class AddSerialToQuestionare < ActiveRecord::Migration
  def change
    add_column :questionares, :serial_no, :integer
  end
end
