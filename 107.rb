require "adt/route.rb"
require "algorithm/kruskal.rb"


# Determining the most efficient way to connect the network.find the maximum saving which can be achieved by removing redundant edges whilst ensuring that the network remains connected
# KRUSKAL ALGORITHM


class Euler107

	private :add_route

	def initialize(url="107_network.txt")
		@total_weight = 0
		@routes = Array.new
		load_graph(url)
		@routes.sort!
	end
	
	
	def load_graph(url)		
		File.open(url,"r") do |file|
			orig = "A"
			while line = file.gets
				line_array = line.scan(/-|\d+/)
				dest = "A"
				line_array.each do |cell|
					add_route(orig.clone,dest.clone,cell)
					dest.succ!
				end
				orig.succ!
			end
		end
	end
	
	
	def add_route(o,d,c)
		if c.to_i > 0
			cost = c.to_i
			@routes.push( Route.new(o,d,cost) )
			@total_weight += cost
		end
	end
	
	
	def solve
		kr = Kruskal.new(@routes)
		kr.routes
		@total_weight - kr.cost
	end


end
