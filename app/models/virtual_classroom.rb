class VirtualClassroom < ApplicationRecord
  belongs_to :school_class
  has_many :scheduled_exams, dependent: :destroy
end
