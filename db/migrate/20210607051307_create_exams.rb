class CreateExams < ActiveRecord::Migration[6.1]
  def change
    create_table :exams do |t|
      t.integer :exam_window_id

      t.timestamps
    end
  end
end
