class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :circle
  end
end
