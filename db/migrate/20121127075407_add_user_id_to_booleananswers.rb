class AddUserIdToBooleananswers < ActiveRecord::Migration
  def change
    add_column :booleananswers, :user_id, :integer
  end
  
end
