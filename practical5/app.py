import heapq

class Node:
    def __init__(self, position, parent=None):
        self.position = position
        self.parent = parent
        self.g = 0  # Cost from start
        self.h = 0  # Heuristic
        self.f = 0  # Total cost

    def __lt__(self, other):
        return self.f < other.f

def heuristic(a, b):
    # Manhattan distance
    return abs(a[0] - b[0]) + abs(a[1] - b[1])

def astar(grid, start, goal):
    open_list = []
    closed_set = set()

    start_node = Node(start)
    goal_node = Node(goal)

    heapq.heappush(open_list, start_node)

    while open_list:
        current_node = heapq.heappop(open_list)
        closed_set.add(current_node.position)

        # Goal reached
        if current_node.position == goal_node.position:
            path = []
            while current_node:
                path.append(current_node.position)
                current_node = current_node.parent
            return path[::-1]  # reverse path

        # Explore neighbors (up, down, left, right)
        neighbors = [(0,1),(0,-1),(1,0),(-1,0)]
        for dx, dy in neighbors:
            neighbor_pos = (current_node.position[0] + dx,
                            current_node.position[1] + dy)

            # Check bounds
            if (0 <= neighbor_pos[0] < len(grid) and
                0 <= neighbor_pos[1] < len(grid[0]) and
                grid[neighbor_pos[0]][neighbor_pos[1]] == 0 and
                neighbor_pos not in closed_set):

                neighbor_node = Node(neighbor_pos, current_node)
                neighbor_node.g = current_node.g + 1
                neighbor_node.h = heuristic(neighbor_pos, goal_node.position)
                neighbor_node.f = neighbor_node.g + neighbor_node.h

                # Check if already in open list with lower cost
                if any(open_node.position == neighbor_node.position and open_node.g <= neighbor_node.g 
                       for open_node in open_list):
                    continue

                heapq.heappush(open_list, neighbor_node)

    return None  # No path found

# Example usage:
grid = [
    [0,0,0,0,0],
    [1,1,0,1,0],
    [0,0,0,0,0],
    [0,1,1,1,0],
    [0,0,0,0,0]
]

start = (0,0)
goal = (4,4)

path = astar(grid, start, goal)
print("Shortest Path:", path)
