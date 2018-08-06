class Ward < ApplicationRecord
	belongs_to :user
  belongs_to :division
end
