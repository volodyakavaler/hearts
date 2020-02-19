class HeartResult < ApplicationRecord
  belongs_to :sick
  belongs_to :heart_program
  has_many :heart_points, dependent: :delete_all

end
