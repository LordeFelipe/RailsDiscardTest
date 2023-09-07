class School < ApplicationRecord
  belongs_to :county
  has_many :school_classes, dependent: :destroy
  include Discard::Model

  scope :kept, -> { undiscarded.joins(:county).merge(County.kept) }
end
