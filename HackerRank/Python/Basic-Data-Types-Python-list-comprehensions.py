-- Exercise: Python: Basic-Data-Types - List Comprehensions
-- Link: https://www.hackerrank.com/challenges/list-comprehensions/problem


if __name__ == '__main__':
    x = int(input())
    y = int(input())
    z = int(input())
    n = int(input())
    
filtered_combos = [
    [i, j, k]                   
    for i in range(x + 1)        
    for j in range(y + 1)       
    for k in range(z + 1)        
    if (i + j + k) != n          
]

print(filtered_combos)
