class SchoolClass < ApplicationRecord
  belongs_to :school
  has_many :virtual_classrooms, dependent: :destroy
  include Discard::Model
end
