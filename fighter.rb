class Fighter 
	attr_reader :name
	#can only read, can not write over it
	attr_accessor :health, :power
	#can change this and write new values for health and power

	def initialize (name, health, power)
		@name = name
		@health = health
		@power = power 
	end

	def attack(enemy)
		enemy.lose_health(self.power, enemy.health)
	end

	def lose_health(enemy_power, health)
		self.health -= enemy_power
	end
end

# ali = Fighter.new("Muhammad Ali", 100, 20)
# tyson = Fighter.new("Tyson", 100, 10)

# puts ali.attack(tyson)
# puts tyson.inspect
# puts tyson.attack(ali)
# puts ali.inspect

# puts f.name
# puts f.health
# puts f.power

