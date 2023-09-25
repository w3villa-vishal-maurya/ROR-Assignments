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
print "\n\n\n\n\ Flatten Array....\n\n\n"

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
print "\n\n\n\n\  Replace Alphabets....\n\n\n"
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
print "\n\n\n\n\ Movie App....\n\n\n"
movies_collection = {
  "Harry Potter" => 4,
  "Avenger" => 4,
  "Lord of the ring" => 5,
}

puts "1.Show \n2.Update \n3.Delete \n4.Insert"
print "Enter the choice what do you want: "
choice = gets.chomp
choice.downcase!

case choice
when "show"
  movies_collection.each { |movie, rating| puts "#{movie} #{rating}" }
when "insert"
  puts "Enter the movie name: "
  movie = gets.chomp

  if movies_collection[movie]
    puts "Movie already have in collection."
  else
    puts "Enter the rating: "
    rating = gets.chomp
    movies_collection[movie] = rating
    puts "Movies added succesfully in the collection."
  end
when "update"
  puts "Enter the movie name: "
  movie = gets.chomp

  if movies_collection[movie]
    puts "Enter the rating: "
    rating = gets.chomp
    movies_collection[movie] = rating
    puts "Movies updated succesfully in the collection."
  else
    puts "Opps, Movies does not exists in the colection."
  end
when "delete"
  puts "Enter the movie name: "
  movie = gets.chomp

  if movies_collection[movie]
    delete movies_collection[movie]
    puts "Movies deleted succesfully from collection."
  else
    puts "Opps, Movies does not exists in the colection."
  end
else
  puts "Exit"
end

####################### Bubble Short in ruby
print "\n\n\n\n\ Bubbe Short....\n\n\n"
arr1 = [1, 3, 5, 2, 5, 99, 6, 9, 8, 7]

def bubble(arr)
  n = arr.length
  flag = true

  while flag
    flag = false
    (n - 1).times do |i|
      (n - i - 1).times do |j|
        if arr[j] > arr[j + 1]
          arr[j], arr[j + 1] = arr[j + 1], arr[j]
          flag = true
        end
      end
    end
  end

  return arr
end

print bubble(arr1)
