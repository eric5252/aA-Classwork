class ChangeName < ActiveRecord::Migration[5.2]
  def change
    change_column :cats, :name, :string, limit: nil
  end
end
