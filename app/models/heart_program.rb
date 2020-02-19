class HeartProgram < ApplicationRecord
  belongs_to :sick
  belongs_to :device

  has_one :heart_result, dependent: :nullify

  validates :device, uniqueness: true
end
