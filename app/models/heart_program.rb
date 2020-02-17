class HeartProgram < ApplicationRecord
  belongs_to :sick
  belongs_to :device

  validates :device, uniqueness: true
end
