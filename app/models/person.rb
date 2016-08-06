class Person < ActiveRecord::Base
	@@num =[]
	@@name =[]
	def self.num=(num)
		@@num.push(num)
	end
	def self.num()
		@@num
	end
	def self.name=(name)
		@@name += name
	end
	def self.name()
		@@name
	end

	def self.reset_static_variables()
		@@num = []
		@@name = []
		
	end
end
