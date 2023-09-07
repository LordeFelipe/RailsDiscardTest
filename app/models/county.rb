class County < ApplicationRecord
  has_many :schools, dependent: :destroy
  include Discard::Model
end
