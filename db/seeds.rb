require 'csv'

Conference.destroy_all
Team.destroy_all

CSV.foreach("#{Rails.root}/db/2014FBSSchedule.csv") do |row|
  next if row[3] == 'Conference'
  row[3].sub!(/Ind\./,'Independent')
  conference = Conference.find_or_create_by(name: row[3])
  puts "conference: #{conference.name}" if conference.valid?
  team = conference.teams.create(name: row[4])
  puts "team: #{team.name}" if team.valid?
end


