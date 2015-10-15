require_relative '../db/config'
require_relative 'models/person'
require_relative '../lib/sunlight_legislators_importer'
require_relative 'models/senator'
require_relative 'models/rep'
require 'byebug'


# people = Person.all
# senators = Senator.where(title: "Sen")
# reps = Rep.where(title: "Rep")

# Total number of rep in office
# 

# #For Query 1
# puts "Query 1: List all senators and reps"
# # List all senator
# puts  "Senators:"
# senators.each do |senator|
# 	puts senator.lastname + " " + senator.firstname + " " +senator.middlename + " (" +senator.party + ")"
# end



# #List all reps
# puts ""
# puts "Representatives:"
# reps.each do |rep|
# 	puts rep.lastname + " " + rep.firstname + " " +rep.middlename + " (" +rep.party + ")"
# 	end

	#Print out what number and percentage of the Representatives


# senators = Person.where(in_office: 1).where(title: "Sen")
# gender_senators = senators.where(gender: "M")
# gender_senators_percentage = ((gender_senators.count)/(senators.count).to_f).round(2)*100
# puts "#{"M"} senators: #{gender_senators.count} (#{gender_senators_percentage}%)"

# representatives = Person.where(in_office: 1).where(title: "Rep")
# gender_reps = representatives.where(gender: "M")
# gender_reps_percentage = ((gender_reps.count)/(representatives.count).to_f).round(2)*100
# puts "#{"M"} representatives: #{gender_reps.count} (#{gender_reps_percentage}%)"

# active_legislators = Person.where(in_office: 1).where("title=? OR title=?", "Sen","Rep")
# counts = active_legislators.group(:state).order('count_id DESC').count('id')
# 	counts.each do |state, legislator_count|
# 		state_rep_count = active_legislators.where("state=?", state).where(title: "Rep").count
# 		state_senator_count = active_legislators.where("state=?",state).where(title: "Sen").count
# 			puts "#{state}: #{state_senator_count} senators, #{state_rep_count} representatives"
# 		end

puts "Senator: #{Person.where(title: "Sen").count}"
puts "Representative: #{Person.where(title: "Rep").count}"





