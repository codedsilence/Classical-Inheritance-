class Animal
	def initialize 

	end
end

class Mammal
	attr_accessor :warm_blood, :hair, :eyes
	def initialize(hair,eyes)
		@warm_blood = true
		@hair = hair
		@eyes = eyes
	end
end

class Amphibian
	attr_accessor :cold_blood, :slime_skin, :gills
	def initialize(slime,gills)
		@cold_blood = true
		@slime_skin = slime
		@gills = gills
	end
end

class Bird
	def initialize(feathers,colour)
		@feathers = feathers
		@colour = colour
	end
end


class Primate < Mammal
	attr_accessor :num_legs
	def initialize(hair,eyes)
		super(hair,eyes)
		@num_legs = 4
	end
end

class Frog < Amphibian
	attr_accessor :metamorphisis
	def initialize(slime,gills)
		super(slime,gills)
		@metamorphisis = "specail little creature"
	end
end

module Flight
	def fly
		puts "I'm a #{self.class.name} flap flap"
	end
end

class Bat < Mammal
	include Flight
end


class Parrot < Bird
	include Flight

end

class Chimp < Primate 
end

################
aMammal = Mammal.new("red", "blue")
puts aMammal.inspect 

aPrimate = Primate.new("grey", "red")
puts aPrimate.num_legs

aParrot = Parrot.new("red","blue")
puts aParrot.fly

aBat = Bat.new("red","red")
puts aBat.fly

aFrog = Frog.new("big","many")
puts aFrog.metamorphisis

aChimp = Chimp.new("black","green")
puts aChimp.warm_blood
