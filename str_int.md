# Working with Strings and Integers

Complete the following exercises to solidify your understandings of strings and integers.

## Just Strings

### 1. First & Last

If you have the strings `"First"` and `"Last"` in the following variables:

```ruby
f = "First"
l = "Last"
```

Use *only* the "string concatenation" technique to complete the following:

1. What code can you write to output the string `"FirstLast"`?
    puts f + l
2. What code can you write to output the string `"LastFirst"`?
    puts l + f
3. What code can you write to output the string `"First Last"`?
    puts f + " " + l
4. What code can you write to output the string `"Last First Last First"`?
    puts l + " " + f + " " + l
Then repeat 1-4 using only the "string interpolation" technique.
    1. puts "#{first}#{last}"
    2. puts "#{last}#{first}"
    3. puts "#{first} #{last}"
    4. puts "#{last} #{first} #{first} #{last}"

### 2. Names

Start with this string:

```ruby
name_1 = "Megan Smith"
name_2 = "Todd Park"
```

1. Can you come up with *two* ways to output just the fragment `"Megan"` from `name_1`?
    puts name_1[0]
    puts name_1[-2]
2. Would either of your techniques from A would work to output `"Todd"` from `name_2`? Why or why not?
    Yes, both have the same number of index.
3. Write code that can output the initials of `name_2`.
    puts name_2.split.first[0] + "." + name_2.split.last[0] + "."

## Just Integers

Start with these numbers:

```ruby
a = 12
b = 65
c = 31
d = 98
```

1. Write code to find the average of these four numbers.
    avg = (a + b + c +d) / 4
    puts avg
2. Find the average yourself using paper or a calculator. Is your answer different than you found in A? Why?
    It is different. It's different because the average is a float. The intergers are fixed numbers.
3. Say you have the operation `a + b * c / d`. What result do you get out from Ruby? What other outputs can you
get out by adding one or more pairs of parentheses to the equation?
  That operation returns 32. (a+b) * (c/d) return 0. (a+b*c)/d returns 20. The other iterations of parentheses don't change the result from the first one as it does't change the order of operations.

## Strings & Integers

### People

Say we have these people:

```ruby
a = "Ezra"
b = "Ada"
c = "Yukihiro"
d = "Grace"
```

Write code to output both the total characters in all the names together and the average length of the names.
  (a + b + c +d).length
  (a + b + c +d).length / 4

### Happy Birthday

In our family we like to say "Happy" once for every year of your age when we say "Happy birthday!". So when you turn
four we'd say "Happy happy happy happy birthday!" Note the capitalization.

Say you have an `age` variable that holds the person's age. Write code to output the appropriate greeting.
  age = 4
  happy_year = "happy " * age
  capital_happy = happy_year.capitalize
  puts "#{capital_happy} birthday!"

### String Compression

There's a silly compression algorithm that outputs the first letter, the number of letters in the middle,
and the last letter. So for the string `"Kalamazoo"` it'd output `"K7o"` or `"Denver"` would be `"D4r"`.
Can you write code to implement that?
  city = gets.chomp
  city_number = city.length
  puts "#{city[0]}#{city_number}#{city[-1]}"
