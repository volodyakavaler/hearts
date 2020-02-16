class DeseaseRecord < ApplicationRecord
  belongs_to :sick
  has_many :desease_record_notes, dependent: :delete_all
end
