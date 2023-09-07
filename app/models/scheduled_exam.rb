class ScheduledExam < ApplicationRecord
  belongs_to :exam
  belongs_to :virtual_classroom
  include Discard::Model

  scope :kept, -> { undiscarded.joins(:exam, :virtual_classroom).merge(VirtualClassroom.kept).merge(Exam.kept) }
end
