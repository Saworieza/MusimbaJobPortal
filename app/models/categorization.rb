class Categorization < ApplicationRecord
  belongs_to :job_category
  belongs_to :preference
  belongs_to :town
end
