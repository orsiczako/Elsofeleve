for i in range(1, 6):
    print(i)


for i in range(2, 11, 2):
    print(i)



fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)



num = 5
factorial = 1
for i in range(1, num + 1):
    factorial *= i
print("Factorial of", num, "is", factorial)


for i in range(5):
    for j in range(i + 1):
        print("*", end=" ")
    print()


start = 10
end = 50
print("Prime numbers between", start, "and", end, "are:")
for num in range(start, end + 1):
    if num > 1:
        for i in range(2, int(num**0.5) + 1):
            if (num % i) == 0:
                break
        else:
            print(num)


student_grades = {"Alice": 92, "Bob": 78, "Charlie": 88, "David": 95}
for student, grade in student_grades.items():
    print(student, "scored", grade)



n = 10
fibonacci_sequence = [0, 1]
for i in range(2, n):
    next_term = fibonacci_sequence[-1] + fibonacci_sequence[-2]
    fibonacci_sequence.append(next_term)
print("Fibonacci sequence up to term", n, "is", fibonacci_sequence)



large_number = 12345678901234567890
digit_sum = 0
for digit in str(large_number):
    digit_sum += int(digit)
print("Sum of digits in", large_number, "is", digit_sum)



import itertools

items = ['A', 'B', 'C']
combinations = []
for r in range(1, len(items) + 1):
    combinations.extend(itertools.combinations(items, r))
print("All possible combinations:", combinations)



n = 7
result = 1
for x in range(1, n+1):
    result *= x
print("The factorial of", n, "is", result)


start = 10
end = 50
largest_prime = 0
for number in range(start, end+1):
    is_prime = True
    for divisor in range(2, int(number**0.5) + 1):
        if number % divisor == 0:
            is_prime = False
            break
    if is_prime and number > largest_prime:
        largest_prime = number
print("The largest prime number between", start, "and", end, "is", largest_prime)




base = 3
exponent = 10
result = 1
while exponent > 0:
    if exponent % 2 == 1:
        result *= base
    base *= base
    exponent //= 2
print("3 to the power of 10 is", result)



first_term = 2
common_ratio = 3
terms = []
for n in range(10):
    term = first_term * (common_ratio ** n)
    terms.append(term)
print("The first 10 terms of the geometric progression are:", terms)


start = 2
end = 40
sum_of_evens = 0
for num in range(start, end+1, 2):
    sum_of_evens += num
print("The sum of the first 20 even numbers between", start, "and", end, "is", sum_of_evens)



n = 15
fib_sequence = [0, 1]
for i in range(2, n):
    next_term = fib_sequence[i-1] + fib_sequence[i-2]
    fib_sequence.append(next_term)
print("The first 15 terms of the Fibonacci sequence are:", fib_sequence)



numbers = [16, 25, 36, 49, 64]
square_roots = []
for x in numbers:
    root = x ** 0.5
    square_roots.append(root)
print("The square roots of the numbers are:", square_roots)




words = ["apple", "banana", "kiwi", "strawberry", "blueberry"]
longest_word = ""
for word in words:
    if len(word) > len(longest_word):
        longest_word = word
print("The longest word in the list is:", longest_word)

