class LotUse < ApplicationRecord
  has_many :zone_applications, dependent: :destroy
  
  # I want to see all the lots that have ever had this kind of use type applied to them
  has_many :lots, through: :zone_applications

  # I want to see every applicant that has ever used this kind of use type
  has_many :applicants, through: :zone_applications
end
