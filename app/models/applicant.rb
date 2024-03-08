class Applicant < ApplicationRecord
  has_many :zone_applications, dependent: :destroy
  has_many :applications, through: :zone_applications

  # Give me all this applicant's lots, past present or future
  has_many :lots, through: :zone_applications

  # How many types of uses of property zones does this applicant often apply for?
  has_many :lot_uses, through: :zone_applications

end
