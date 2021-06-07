class Exam < ApplicationRecord
  belongs_to :college
  has_many :users, through: :colleges
  has_many :exam_windows
end
