class Location < ApplicationRecord
has_many :users
  belongs_to :division
  
  has_many :sublocations
end
