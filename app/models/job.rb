class Job < ApplicationRecord
	has_attached_file :logo, styles: { medium: "300x250>", thumb: "50x50>" }, default_url: "/assets/main_logo.png"
  	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

  	#track hits
  	is_impressionable
	
	belongs_to :user
	belongs_to :employer
	belongs_to :job_category
	belongs_to :town
  	
  	acts_as_votable

  	#https://stackoverflow.com/questions/25565621/last-week-most-viewed-items-using-impressionist-gem
  	#scope :order_by_starting_at, -> (start_date){ 
	#    impressions_table = Impression.quoted_table_name
	#
	#    query = if start_date.present?
	#      "#{impressions_table}.created_at >= '#{start_date}' AND "
	#    else
	#      ''
	#    end

	#    query += "#{impressions_table}.created_at <= '#{Time.now}'"
	#
	#    order(%Q{
	#            COALESCE((
	#              SELECT
	#                COUNT(#{impressions_table}.impressionable_id)
	#              FROM
	#                #{impressions_table}
	#              JOIN
	#                #{Job.quoted_table_name} AS popular_jobs
	#              ON
	#                popular_jobs.id = #{impressions_table}.impressionable_id
	#              AND
	#                #{impressions_table}.impressionable_id = '#{self.to_s}'
	#              WHERE
	#                #{query}
	#             ), 0) DESC
	#          })
    #}

  	#scope :view_counts_for_first,-> (number){  
    #	order_by_starting_at.limit(number) 
  	#}
end
