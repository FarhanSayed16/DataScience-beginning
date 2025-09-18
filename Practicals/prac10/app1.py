def associative(a, b, c):
    LHS = (a * b) * c
    RHS = a * (b * c)

    if LHS == RHS:
        print(f"The value of LHS is: {LHS}")
        print(f"The value of RHS is: {RHS}")
        print("✅ Associative Law Proved")
    else:
        print(f"LHS = {LHS}, RHS = {RHS}")
        print("❌ Associative Law Not Satisfied")


# Input values
val = [int(x) for x in input("Enter 3 values [comma separated]: ").split(",")]
associative(val[0], val[1], val[2])
