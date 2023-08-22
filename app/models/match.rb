class Match < ApplicationRecord
  geocoded_by :address

  belongs_to :user
  has_many :match_makers, dependent: :destroy

  after_validation :geocode, if: :will_save_change_to_address?
end
