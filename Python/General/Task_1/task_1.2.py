if __name__ == "__main__":
    a = int(input())
    b = int(input())

    if not 1 <= a <= 10**10 or not 1 <= b <= 10**10:
        raise Exception("Wrong range")

    print(a + b)
    print(a - b)
    print(a * b)
