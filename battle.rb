require_relative 'bear'
require_relative 'ninja'

class Battle
	attr_reader :fighter1, :fighter2
	# could technically user bear and ninja here but we use fighter 1 and fighter 2 so that we don't have to edit this as much if we have different ppl fighting in the future
	def initialize(fighter1, fighter2)
		@fighter1 = fighter1
		@fighter2 = fighter2
	end
	def fight
		@fighter1.attack(@fighter2)
		@fighter2.attack(@fighter1)
		self.battle_status
	end
	
	def fighter2_ninja
		@fighter2.attack(@fighter1)
		self.battle_status
	end
	
	def fighter1_bear
		2.times do
			@fighter1.attack(@fighter2)
		end
		self.battle_status
	end

	def battle_status
		puts "#{@fighter1.name} has #{@fighter1.health} health remaining"
		puts "#{@fighter2.name} has #{@fighter2.health} health remaining"
	end
end
s
bear = Bear.new("Yogi", 100, 20)
ninja = Ninja.new("Chuck", 100, 25)
battle = Battle.new(bear, ninja)


yogi_name = battle.fighter1.name
chuck_name = battle.fighter2.name

puts "Welcome to the fight between #{yogi_name} and #{chuck_name}."

until battle.fighter1.health <= 0 || battle.fighter2.health <= 0
	battle.fight
	battle.fighter1_bear
	2.times do 
		battle.fighter1_bear
	end
end

if battle.fighter2.health <= 0
	puts "#{yogi_name} is the winner!"
else battle.fighter1.health <= 0
	puts "#{chuck_name} is the winner!"
end	

