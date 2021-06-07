class College < ApplicationRecord
  has_many :users, through: :exams
  has_many :exams
end
