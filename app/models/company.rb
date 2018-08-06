class Company < ApplicationRecord
	belongs_to :user
	
	has_many :branches, dependent: :destroy
	accepts_nested_attributes_for :branches, reject_if: :all_blank, allow_destroy: true
end
