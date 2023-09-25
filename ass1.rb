#################### Code for reversing a string in ruby...

puts "Enter the string: "
str = gets.chomp

#  I would like to implement using two pointer which is basic concept of Data Structure...
left = 0
right = str.length - 1

puts right

loop do
  break if left > right

  temp = str[left]
  str[left] = str[right]
  str[right] = temp

  left += 1
  right -= 1
end

puts str

############################ Flatten Array

arr = [1, 2, 3, [4, 5, 6], [7, 8, 9, [10, 11, 12]]]
newArr = []

def flat(arr, newArr)
  for item in arr
    if item.is_a?(Array)
        flat(item, newArr)
    else 
        newArr.push(item)  
    end    
  end
end

flat(arr, newArr)

print newArr

###################### Replace alphabet in strings

puts "Enter the string: "
str1 = gets.chomp

puts "Enter the word: "
let1 = gets.chomp

puts "Enter the new word: "
let2 = gets.chomp

if str1.include? let1
    str1.gsub!(let1, let2)
end    

puts str1

# Movie rating app
# skipped.........

####################### Bubble Short in ruby

arr1 = [1,3,5,2,5,99,6,9,8,7]

def bubble(arr) 
    n = arr.length
    flag = true

    while flag
        flag = false
        (n-1).times do |i|
            (n-i-1).times do |j|
                if arr[j] > arr[j+1]
                    arr[j], arr[j+1] = arr[j+1], arr[j]
                    flag = true
                end    
            end
        end   
    end  

    return arr
end  

print bubble(arr1)


