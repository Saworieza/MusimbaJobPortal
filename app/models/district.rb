class District < ApplicationRecord
  has_many :users

  belongs_to :constituency

  has_many :divisions
end
