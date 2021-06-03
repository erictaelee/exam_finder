class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.integer :college_id
      t.integer :exam_id
      t.DateTime :start_time

      t.timestamps
    end
  end
end
