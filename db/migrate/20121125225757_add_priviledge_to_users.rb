class AddPriviledgeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :priviledge, :string
  end
end
