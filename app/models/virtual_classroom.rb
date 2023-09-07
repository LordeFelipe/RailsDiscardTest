class VirtualClassroom < ApplicationRecord
  belongs_to :school_class
  has_many :scheduled_exams, dependent: :destroy
  include Discard::Model

  scope :kept, -> { undiscarded.joins(:school_class).merge(SchoolClass.kept) }
end
