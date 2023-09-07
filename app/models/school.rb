class School < ApplicationRecord
  belongs_to :county
  has_many :school_classes, dependent: :destroy
end
