require_relative 'fighter' 
#ruby is finding the file fighter (doesn't necessarily have to be in the same folder. you would use just 'require' instead of require_relative)


class Bear < Fighter
	def initialize (name, health, power)
		super(name, health, power)
	end
	def attack (enemy)
		puts "RAWR!"	
		enemy.lose_health(self.power, enemy.health)
	end	
end

# ninja = Fighter.new("Ninja", 100, 10)
# bear = Bear.new("Bear", 100, 12)


# puts bear.attack(ninja)
# puts ninja.inspect

