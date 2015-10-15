require_relative '../db/config'
require_relative 'models/person'
require_relative '../lib/sunlight_legislators_importer'
require_relative 'models/senator'
require_relative 'models/rep'
require 'byebug'


people = Person.all
senators = Senator.where(title: "Sen")
reps = Rep.where(title: "Rep")

#For Query 1
puts "Query 1: List all senators and reps"
# List all senator
puts  "Senators:"
senators.each do |senator|
	puts senator.lastname + " " + senator.firstname + " " +senator.middlename + " (" +senator.party + ")"
end



#List all reps
puts ""
puts "Representatives:"
reps.each do |rep|
	puts rep.lastname + " " + rep.firstname + " " +rep.middlename + " (" +rep.party + ")"
	end