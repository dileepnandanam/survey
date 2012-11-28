class AddUserIdToWordanswers < ActiveRecord::Migration
  def change
    add_column :wordanswers, :user_id, :integer
  end
  
end
