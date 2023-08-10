class Match < ApplicationRecord
  belongs_to :user
  has_many :match_makers, dependent: :destroy
end
