-- Exercise: Python: Strings - Mutations    
-- Link: https://www.hackerrank.com/challenges/python-mutations/problem

def mutate_string(string, position, character):
    stringAsList =list(string)
    stringAsList[position] = character
    return "".join(stringAsList)

if __name__ == '__main__':
    s = input()
    i, c = input().split()
    s_new = mutate_string(s, int(i), c)
    print(s_new)
