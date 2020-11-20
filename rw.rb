#!/usr/bin/env ruby

require './graph.rb'

g = createRandomGraph(10, 0.44)

# random walk on graph
m = 10 # number of steps
id = 1 # initial node id
puts id
m.times do
  id = g.getNeighbors(id).sample
  puts id
end

