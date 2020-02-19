class Device < ApplicationRecord
  validates :name, :type_of_device, presence: true
  has_one :heart_program
end
