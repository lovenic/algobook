require "set"

QUEUE = Queue.new
QUEUE << "you"

VISITED_SET = Set.new

graph = {
  "you" => ["andrew", "ti"],
  "andrew" => ["mew", "alam"],
  "ti" => [],
  "mew" => [],
  "alam" => [],
}

def bfs(graph)
  while !QUEUE.empty? do
    person = QUEUE.pop
    unless visited?(person)
      VISITED_SET.add(person)
      if person[-1] == "m"
        return person
      else
        queue_connections(graph, person)
      end
    end
  end
  "no seller found"
end

def queue_connections(graph, key)
  graph[key].each do |person|
    QUEUE << person
  end
end

def visited?(person)
  VISITED_SET.include?(person)
end

puts bfs(graph)
