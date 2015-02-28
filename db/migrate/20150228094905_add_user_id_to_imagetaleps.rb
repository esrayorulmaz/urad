class AddUserIdToImagetaleps < ActiveRecord::Migration
  def change
    add_column :imagetaleps, :user_id, :integer
  end
end
