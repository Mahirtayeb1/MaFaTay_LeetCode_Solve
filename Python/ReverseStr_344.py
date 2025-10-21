# easy  344 reverse string

s = ['h', 'e', 'l', 'l', 'o']
def rev(s):
    return s[::-1]   # it creates a copy of the array and then modify 
print(rev(s))

# but it is not optimal

# reverse the input string by modifying the array in place with O(1) extra memory
# modify s in-place

class solution:  # we need to use pointers
    def reverseStr(s): 
        i , j = 0, len(s)-1 
        while i < j:
            s[i], s[j] = s[j], s[i]
            i, j = i +1, j-1
        return s
        
    print(reverseStr(s))
