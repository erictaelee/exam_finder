class CreateProctoringSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :proctoring_sessions do |t|
      t.integer :user_id
      t.integer :exam_id
      t.datetime :start_time

      t.timestamps
    end
  end
end
