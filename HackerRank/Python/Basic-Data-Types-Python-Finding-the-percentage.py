-- Exercise: Python: Basic-Data-Types - Finding the percentage
-- Link: https://www.hackerrank.com/challenges/finding-the-percentage/problem


if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for _ in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
    query_name = input()
    
    print(f"{sum(student_marks.get(query_name)) / len(student_marks.get(query_name)):.2f}")
