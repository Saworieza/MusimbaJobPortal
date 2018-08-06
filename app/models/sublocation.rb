class Sublocation < ApplicationRecord
 has_many :users
  belongs_to :location
  
  has_many :villages
end
