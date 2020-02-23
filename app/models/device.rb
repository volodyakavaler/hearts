class Device < ApplicationRecord
  validates :name, :uid, :type_of_device, presence: true
  validates :uid, uniqueness: true, length: { is: 3 }
  
  has_one :heart_program
end
