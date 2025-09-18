def distributive(a, b, c):
    LHS = a * (b + c)
    RHS = a * b + a * c

    print("\nChecking Distributive Law of Multiplication over Addition:")
    print(f"LHS = a*(b+c) = {LHS}")
    print(f"RHS = a*b + a*c = {RHS}")

    if LHS == RHS:
        print("✅ Distributive Law Proved")
    else:
        print("❌ Distributive Law Not Satisfied")


# Input values
val = [int(x) for x in input("Enter 3 values [comma separated]: ").split(",")]
distributive(val[0], val[1], val[2])
