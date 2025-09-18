# Tic Tac Toe Game (2 Players)

def print_board(board):
    print("\n")
    for row in board:
        print(" | ".join(row))
        print("-" * 5)
    print("\n")


def check_winner(board, player):
    # Rows
    for row in board:
        if all(cell == player for cell in row):
            return True
    # Columns
    for col in range(3):
        if all(board[row][col] == player for row in range(3)):
            return True
    # Diagonals
    if all(board[i][i] == player for i in range(3)):
        return True
    if all(board[i][2 - i] == player for i in range(3)):
        return True
    return False


def is_full(board):
    return all(cell != " " for row in board for cell in row)


def tic_tac_toe():
    board = [[" " for _ in range(3)] for _ in range(3)]
    current_player = "X"

    print("Welcome to Tic Tac Toe!")
    print("Players: X and O")
    print_board(board)

    while True:
        try:
            move = input(f"Player {current_player}, enter your move (row,col): ")
            row, col = map(int, move.split(","))
        except:
            print("❌ Invalid input! Enter row,col (0-2). Example: 1,2")
            continue

        if row not in range(3) or col not in range(3):
            print("❌ Invalid move! Row and column must be between 0 and 2.")
            continue
        if board[row][col] != " ":
            print("❌ Cell already taken! Try again.")
            continue

        board[row][col] = current_player
        print_board(board)

        if check_winner(board, current_player):
            print(f"🎉 Player {current_player} wins!")
            break
        if is_full(board):
            print("🤝 It's a draw!")
            break

        # Switch player
        current_player = "O" if current_player == "X" else "X"


# Run the game
tic_tac_toe()
