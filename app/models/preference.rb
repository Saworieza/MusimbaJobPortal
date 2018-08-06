class Preference < ApplicationRecord
    attr_accessor :job_category_ids
    belongs_to :user
    
    has_many :categorizations
    has_many :towns, through: :categorizations
    has_many :job_categories, through: :categorizations
end
