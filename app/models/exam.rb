class Exam < ApplicationRecord
  has_many :scheduled_exams, dependent: :destroy
  include Discard::Model
end
