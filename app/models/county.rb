class County < ApplicationRecord
  has_many :schools, dependent: :destroy
end
