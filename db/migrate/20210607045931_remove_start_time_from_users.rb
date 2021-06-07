class RemoveStartTimeFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :start_time
  end
end
