# Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).
# Explanation: The odd numbers between 3 and 7 are [3,5,7]. output: 3 
# Explanation: The odd numbers between 8 and 10 are [9]. output: 3 

def intervalCountOdd(low, high):
    a = []
    a[0] = low
    a[len-1] = high
    count = 0
    for i in range(a):
        if i % 2 == 1:
            count = count + 1
        else:
            continue
    return count

print(intervalCountOdd(2, 5))    

        
  