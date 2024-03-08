class Lot < ApplicationRecord
  has_many :zone_applications, dependent: :destroy

  # From the lot, show me every applicant who's ever been involved in this particular property
  has_many :applicants, through: :zone_applications

  # From the lot, I want to know every different way this lot has been proposed as a zone/use type in its history
  has_many :lot_uses, through: :zone_applications
end
