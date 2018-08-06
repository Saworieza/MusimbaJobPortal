desc "Remove searches older than a month"
task :remove_old_searches => :environment do
	#use whenever gem to trigger this daily. railscast 164
	Search.delete_all ["created_at < ?", 1.month.ago]
end