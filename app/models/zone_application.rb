class ZoneApplication < ApplicationRecord
  belongs_to :applicant
  belongs_to :lot
  belongs_to :lot_use
  validates :submitted_at, presence: true
  validates :applicant, presence: true
  validates :lot, presence: true
  validates :lot_use, presence: true
end
