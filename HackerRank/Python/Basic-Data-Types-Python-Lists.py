-- Exercise: Python: Basic-Data-Types - Lists
-- Link: https://www.hackerrank.com/challenges/python-lists/problem


if __name__ == '__main__':
    N = int(input())

    final_list = []
    for _ in range(N): 
        parts = input().split()
        
        if parts[0] == "insert": 
            final_list.insert(int(parts[1]), int(parts[2]))
        
        elif parts[0] == "print": 
            print(final_list)
        
        elif parts[0] == "remove": 
            final_list.remove(int(parts[1]))
        
        elif parts[0] == "append": 
            final_list.append(int(parts[1]))
        
        elif parts[0] == "sort": 
            final_list.sort()
            
        elif parts[0] == "pop": 
            final_list.pop(-1)
        
        elif parts[0] == "reverse":
            final_list.reverse()
