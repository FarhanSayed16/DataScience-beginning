def solve_n_queens(n):
    solutions = []
    cols = set()
    diag1 = set()
    diag2 = set()
    board = [-1] * n

    def backtrack(r):
        if r == n:
            sol = []
            for i in range(n):
                row = ['.'] * n
                row[board[i]] = 'Q'
                sol.append(''.join(row))
            solutions.append(sol)
            return
        for c in range(n):
            if c in cols or (r - c) in diag1 or (r + c) in diag2:
                continue
            cols.add(c)
            diag1.add(r - c)
            diag2.add(r + c)
            board[r] = c
            backtrack(r + 1)
            cols.remove(c)
            diag1.remove(r - c)
            diag2.remove(r + c)
            board[r] = -1

    backtrack(0)
    return solutions

# Example usage:
n = 4
solutions = solve_n_queens(n)
print(f"Found {len(solutions)} solutions for n = {n}")
for i, sol in enumerate(solutions, 1):
    print(f"Solution {i}:")
    print('\n'.join(sol))
    print()
