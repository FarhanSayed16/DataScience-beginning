import random

def calculate_attacks(board):
    """Heuristic: number of attacking pairs of queens on the board."""
    n = len(board)
    attacks = 0
    for i in range(n):
        for j in range(i+1, n):
            if board[i] == board[j] or abs(board[i] - board[j]) == abs(i - j):
                attacks += 1
    return attacks

def get_best_neighbor(board):
    """Generate neighbors and return the one with the fewest attacks."""
    n = len(board)
    best_board = board[:]
    best_attacks = calculate_attacks(board)

    for row in range(n):
        for col in range(n):
            if col == board[row]:  
                continue
            new_board = board[:]
            new_board[row] = col
            attacks = calculate_attacks(new_board)
            if attacks < best_attacks:
                best_attacks = attacks
                best_board = new_board[:]

    return best_board, best_attacks

def hill_climbing(n, max_restarts=100):
    """Solve N-Queens using Hill Climbing with random restarts."""
    for restart in range(max_restarts):
        # Start with a random board
        board = [random.randint(0, n-1) for _ in range(n)]
        current_attacks = calculate_attacks(board)

        while True:
            neighbor, neighbor_attacks = get_best_neighbor(board)
            if neighbor_attacks >= current_attacks:
                break  # Local optimum reached
            board, current_attacks = neighbor, neighbor_attacks

        if current_attacks == 0:
            print(f"✅ Solution found after {restart} restart(s): {board}")
            return board

    print("❌ No solution found after maximum restarts.")
    return None

# Example run:
n = 8
solution = hill_climbing(n)
if solution:
    print("\nChessboard:")
    for i in range(n):
        row = ['.'] * n
        row[solution[i]] = 'Q'
        print(' '.join(row))
