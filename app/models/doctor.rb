class Doctor < ApplicationRecord
  belongs_to :practice

  validates :name, presence: true

end
