class Constituency < ApplicationRecord
  belongs_to :user
  belongs_to :county

  has_many :districts
end
