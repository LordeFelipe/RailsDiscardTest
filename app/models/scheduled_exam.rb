class ScheduledExam < ApplicationRecord
  belongs_to :exam
  belongs_to :virtual_classroom
end