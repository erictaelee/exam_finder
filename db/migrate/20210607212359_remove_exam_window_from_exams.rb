class RemoveExamWindowFromExams < ActiveRecord::Migration[6.1]
  def change
    remove_column :exams, :exam_window_id, :integer
    add_column :exams, :subject, :string
    add_column :exams, :college_id, :integer
  end
end
