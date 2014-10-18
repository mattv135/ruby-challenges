class Team

	@@total_teams = 0

	def initialize
		@@total_teams += 1
	end

	attr_accessor :team, :record, :coach

	def Team.current_count
		puts "There are currently #{@@total_teams} instances of the Team class."
	end
end

class NFL < Team

	attr_accessor :owner, :division

	def about_team
		return "#{@owner} is the owner of the #{@record} #{@team}. The #{@team} play in the #{@division} and are coached by #{@coach}."
	end
end


class NCAAB < Team

	attr_accessor :conference

	def about_team
		return "Coach #{@coach} and the #{@record} #{@team} play in the #{@conference} conference."
	end
end


duke_blue_devils = NCAAB.new
duke_blue_devils.team = 'Duke Blue Devils'
duke_blue_devils.conference = 'ACC'
duke_blue_devils.coach = 'Mike Krzyzewski'
duke_blue_devils.record = '25-2'

michigan_wolverines = NCAAB.new
michigan_wolverines.team = 'Michigan Wolverines'
michigan_wolverines.conference = 'Big 10'
michigan_wolverines.coach = 'John Beilein'
michigan_wolverines.record = '22-5'

detroit_lions = NFL.new
detroit_lions.team = 'Detroit Lions'
detroit_lions.division = 'NFC North'
detroit_lions.coach = 'Jim Caldwell'
detroit_lions.owner = 'William Clay Ford Sr'
detroit_lions.record = '5-1'

seattle_seahawks = NFL.new
seattle_seahawks.team = 'Seattle Seahawks'
seattle_seahawks.division = 'NFC West'
seattle_seahawks.coach = 'Pete Carroll'
seattle_seahawks.owner = 'Paul Allen'
seattle_seahawks.record = '3-2'

puts duke_blue_devils.about_team
puts michigan_wolverines.about_team
puts detroit_lions.about_team
puts seattle_seahawks.about_team

Team.current_count
Team.inspect
seattle_seahawks.inspect

