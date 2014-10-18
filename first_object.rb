class Team

	@@total_teams = 0

	def initialize
		@@total_teams += 1
	end

	def set_team_name=(team)
		@team = team
	end

	def get_team_name
		return @team
	end

	def set_record=(record)
		@record = record
	end

	def get_record
		return record
	end

	def set_coach=(coach)
		@coach = coach
	end

	def get_coach
		return @coach
	end

	def about_team
		return "The #{@team} have a #{@record} and are coached by #{@coach}."
	end

	def Team.current_count
		puts "There are currently #{@@total_teams} instances of the Team class."
	end
end

class NFL < Team

	def set_owner=(owner)
		@owner = owner
	end

	def get_owner
		return owner
	end

	def set_division=(division)
		@division = division
	end

	def get_division
		return division
	end

	def about_team
		return "#{@owner} is the owner of the #{@team}. The #{@team} play in the #{@division} and are coached by #{@coach}."
	end
end


class NCAAB < Team
	
	def set_conference=(conference)
		@conference = conference
	end

	def get_conference
		return conference
	end

	def about_team
		return "Coach #{@coach} and the #{@team} play in the #{@conference} conference."
	end
end


duke_blue_devils = NCAAB.new
duke_blue_devils.set_team_name = 'Duke Blue Devils'
duke_blue_devils.set_conference = 'ACC'
duke_blue_devils.set_coach = 'Mike Krzyzewski'

michigan_wolverines = NCAAB.new
michigan_wolverines.set_team_name = 'Michigan Wolverines'
michigan_wolverines.set_conference = 'Big 10'
michigan_wolverines.set_coach = 'John Beilein'

detroit_lions = NFL.new
detroit_lions.set_team_name = 'Detroit Lions'
detroit_lions.set_division = 'NFC North'
detroit_lions.set_coach = 'Jim Caldwell'
detroit_lions.set_owner = 'William Clay Ford Sr'

seattle_seahawks = NFL.new
seattle_seahawks.set_team_name = 'Seattle Seahawks'
seattle_seahawks.set_division = 'NFC West'
seattle_seahawks.set_coach = 'Pete Carroll'
seattle_seahawks.set_owner = 'Paul Allen'

puts duke_blue_devils.about_team
puts michigan_wolverines.about_team
puts detroit_lions.about_team
puts seattle_seahawks.about_team

Team.current_count
Team.inspect
seattle_seahawks.inspect

