class Division < ApplicationRecord
	has_many :users
  belongs_to :district

  has_many :locations
  has_many :wards
end
