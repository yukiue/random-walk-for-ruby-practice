#!/usr/bin/env ruby

require './graph.rb'

g = createRandomGraph(10, 0.44)

puts 'graph {'
g.getEdges().each do |e|
  if e[0] <= e[1]
    puts "#{e[0]} -- #{e[1]};"
  end
end
puts '}'
