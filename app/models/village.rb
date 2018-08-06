class Village < ApplicationRecord
has_many :users
  belongs_to :sublocation
end
