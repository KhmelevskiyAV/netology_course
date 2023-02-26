if __name__ == "__main__":
    salary = int(input("Indicate the salary:\n"))
    mortgage = int(input("What percentage (%) of the salary goes to the mortgage?:\n"))
    life = int(input("What percentage (%) of the salary goes 'for life':\n"))

    spent_on_mortgage = int(((salary * mortgage) / 100) * 12)
    saving_per_year = int(salary - ((salary * mortgage) / 100) - ((salary * life) / 100)) * 12

    print(f"Spent on mortgage: {spent_on_mortgage}")
    print(f"Savings per year: {saving_per_year}")
