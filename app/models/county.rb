class County < ApplicationRecord
  has_many :users

  has_many :constituencies
  has_many :towns
end
