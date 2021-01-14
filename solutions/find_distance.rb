require "set"

def find_distance(graph, vertex_a, vertex_b)
  queue = [[0, vertex_a]]
  visited = Set.new

  until queue.empty?
    distance, vertex = queue.shift

    return distance if vertex == vertex_b && distance > 0
    next if visited.include? vertex

    graph[vertex].each do |adj| 
      queue << [distance + 1, adj] 
    end

    visited.add(vertex)
  end

  -1
end

if __FILE__ == $PROGRAM_NAME
  graph = {
    jan: [:john, :jambaby],
    john: [:carl],
    jambaby: [],
    carl: [:jambaby],
    dave: []
  }

  puts "Expecting: 2"
  puts find_distance(graph, :jan, :carl)

  puts

  puts "Expecting: -1"
  puts find_distance(graph, :dave, :carl)

  # Don't forget to add your own!

  graph = {
    jan: [:cranberry, :jamboree],
    john: [:jambaby],
    jambaby: [:jan, :cranberry],
    carl: [],
    dave: [:john, :carl],
    cranberry: [],
    hamtaro: [:jambaby, :dave],
    jamboree: [:carl, :john]
  }

  puts

  puts "Expecting: 4"
  puts find_distance(graph, :jan, :jan)

  puts

  puts "Expecting: 1"
  puts find_distance(graph, :dave, :carl)

  puts

  puts "Expecting: -1"
  puts find_distance(graph, :jamboree, :hamtaro)
end

# Please add your pseudocode to this file
# And a written explanation of your solution
