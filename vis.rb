#!/usr/bin/env ruby

require './graph.rb'

g = createRandomGraph(10, 0.44)

puts '#define v_size 5 5'
puts '#define v_color blue'
puts '#define e_width 1'
puts '#define e_color blue'

g.getNodes().each do |v|
  puts "define v#{v} ellipse -f black v_size white"
end

g.getEdges().each do |e|
  puts "define - link v#{e[0]} v#{e[1]} e_width e_color"
end

puts 'spring /^v/'

# random walk on graph
m = 10 # number of steps
s = 1 # starting node id
id = s

puts 'define walker ellipse 5 5 red'
puts "move walker v#{id}"
puts 'priority walker 100'

puts 'display'
puts 'wait'

m.times do
  id = g.getNeighbors(id).sample
  puts "animate walker v#{id}"
  puts 'display'
end

puts 'wait'
