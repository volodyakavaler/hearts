class DeseaseRecordNote < ApplicationRecord
  belongs_to :desease_record
  has_one :desease_record_note
end
