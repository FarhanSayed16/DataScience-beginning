import random

def f(x):
    return -x**2 + 6*x

def hill_climb(max_iterations=100, step_size=0.1):
    current_x = random.uniform(0, 6)
    current_val = f(current_x)

    for _ in range(max_iterations):
        new_x = current_x + random.uniform(-step_size, step_size)
        new_x = max(0, min(6, new_x))
        new_val = f(new_x)

        if new_val > current_val:
            current_x, current_val = new_x, new_val

    return current_x, current_val

best_x, best_val = hill_climb()
print(f"Best x: {best_x:.4f}, Best f(x): {best_val:.4f}")
