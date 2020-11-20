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
    @nodes = @nodes.uniq
  end

  def addEdges(i, j)
    [i, j].each do |v|
      unless @nodes.include?(v)
        addNodes(v)
      end
    end
    @edges.push([i, j])
    @edges.push([j, i])
    @edges = @edges.uniq
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

# random graph
def createRandomGraph(n, p)
  g = Graph.new
  # add n nodes
  [*1..n].each do |v|
    g.addNodes(v)
  end
  # add edges with probability p
  [*1..n].each do |i|
    [*1..n].each do |j|
      if not i == j and Random.rand < p
        g.addEdges(i, j)
      end
    end
  end
  return g
end
