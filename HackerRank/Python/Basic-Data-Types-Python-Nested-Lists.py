-- Exercise: Python: Basic-Data-Types - Nested Lists 
-- Link: https://www.hackerrank.com/challenges/nested-list/problem

records =[]

if __name__ == '__main__':
    for _ in range(int(input())):
        name = input()
        score = float(input())
        records.append([name, score])
    scores = sorted({score[1] for score in records})[1]
    names = sorted(student[0] for student in records if student[1]==scores)

for name in names :
    print(name)
