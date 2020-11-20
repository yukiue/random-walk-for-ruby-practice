#!/usr/bin/env ruby

# undirected graph
class Graph
  def initialize()
    @nodes = []
    @edges = []
  end

  def getNodes()
    return @nodes
  end

  def getEdges()
    return @edges
  end

  def addNodes(i)
    @nodes.push(i)
  end

  def addEdges(i, j)
    @edges.push([i, j])
    @edges.push([j, i])
  end

  def getNeighbors(i)
    neighbors = []
    @edges.each do |e|
      if e[0] == i
        neighbors.push(e[1])
      end
    end
    return neighbors
  end

  def getDegree(i)
    return getNeighbors(i).length
  end
end

g = Graph.new

p g
g.addNodes(1)
g.addEdges(1, 2)
g.addEdges(1, 3)
g.addEdges(1, 4)
p g
p g.getNeighbors(1)
p g.getDegree(1)

