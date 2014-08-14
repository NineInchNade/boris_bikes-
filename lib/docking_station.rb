# require "bike"

# class DockingStation

# 	DEFAULT_CAPACITY = 10 

# 	def initialize(options = {})
# 		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
# 		@bikes = []
# 	end 

# 	def bike_count
# 		@bikes.count  
# 	end

# 	def dock(bike)
# 		raise "Station is full" if full?
# 		@bikes << bike 
# 	end

# 	def release(bike)
# 		@bikes.delete(bike)
# 	end 

# 	def full?
# 		bike_count == @capacity 
# 	end

# 	def bikes
# 		@bikes
# 	end

# 	def available_bikes
# 		@bikes.reject { |bike| bike.broken? }
# 	end
# 	end 



require 'bike'
require_relative 'bike_container'
 
class DockingStation 

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end 
end
