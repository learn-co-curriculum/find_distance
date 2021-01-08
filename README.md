# Days 4 to 5: Breadth-first Graph Traversal

**Fork and then clone me!**

![Friends graph](./friends.jpg)

For this challenge we are going to find the length of the shortest distance between two friends (or vertices, rather, which represent friends). To achieve this we'll need to perform a breadth-first search (BFS). Unlike depth-first search (DFS), which travels all the way down a path, a BFS considers all adjacent vertices on each iteration. If we were to do a BFS on the friends graph to find the shortest distance from Elisa to Diana, it might check the friends like so:

1. Is Anne or Carl == Diana?
2. Is Bob or Diana == Diana?

In other words, the algorithm checks the adjacent vertices first (the closest ones to the starting vertex), and then checks the vertices adjacent to those. Since it always checks the closest vertices first, and the furthest last, it's perfect for finding the shortest distance between two vertices!

## find_distance(graph, vertex_a, vertex_b) / findDistance(graph, vertexA, vertexB)

Use BFS to return the shortest distance between vertex A and B. If there is no path, return -1. The graph and vertices will always be valid. 

```
graph = {
  Anne: [Bob, Elisa, Diana],
  Bob: [Anne, Diana, Carl],
  Elisa: [Anne, Carl],
  Carl: [Bob, Elisa, Diana],
  Diana: [Anne, Bob, Carl, Johann],
  Johann: []
}

find_distance(graph, Elisa, Diana)
=> 2

find_distance(graph, Johann, Diana)
=> -1
```

_Hint: A BFS is normally implemented as an iterative algorithm that uses a queue to track which vertices to visit next. Be careful of loops!_

Use the language of your choosing. We've included starter files for some languages where you can pseudocode, explain your solution and code.

## Before you start coding:

1. Rewrite the problem in your own words
2. Validate that you understand the problem
3. Write your own test cases
4. Pseudocode
5. Code!

**_And remember, don't run our tests until you've passed your own!_**

## How to run your own tests

### Ruby

1. `cd` into the ruby folder
2. `ruby <filename>.rb`

### JavaScript

1. `cd` into the javascript folder
2. `node <filename>.js`

## How to run our tests

### Ruby

1. `cd` into the ruby folder
2. `bundle install`
3. `rspec`

### JavaScript

1. `cd` into the javascript folder
2. `npm i`
3. `npm test`
