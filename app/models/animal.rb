class Animal < ActiveRecord::Base
  has_many :sightings
  validates :common_name, uniqueness: true
  validates :latin_name, uniqueness: true
  validates :common_name, length: { minimum: 2 }
  validates :latin_name, length: { minimum: 2 }
  validates :kingdom, length: { in: 1..20 }
end
