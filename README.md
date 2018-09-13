# Ruby in HackerRank

The next examples [Link](https://bitbucket.org/antonmor/hackerrank/src/master/) subdomain Introduction, Control Structures Arrays & Hashes, Methods and Strings.

## Ruby Control Structure - Each

Ruby offers control structures that let you iterate through its collections. One such control structure is each.

As you already know, HackerRank conducts many contests, and for every user who participates in a contest we update their score once the contest ends. You will be given a method called scoring with an array passed as an argument. Elements of the array are of the class User.

User class has a method update_score.

Your task is to iterate through each of the elements in the array using each and call the method update_score on every element. 

```ruby
def scoring(array)
    # iterate through each of the element in array using *each* and call update_score on it
    array.each do |user|
        user.update_score
    end
end
```
name file each.rb

##Ruby Control Structures - Unless
You've updated the score of every HackerRank user who participated in a contest. Sometimes, HackerRank admins also participate in a given contest but care is taken to ensure that their submissions do not get any score and their score is not updated.

Like the previous challenge, you are given a method scoring with an array passed as an argument. Each element of the array is of class User.

User has two public methods, is_admin? and update_score. Your task in this challenge is to use the control structure unless and update all elements of the array who are not admins. 

```ruby
def scoring(array)
  # update_score of every user in the array unless the user is admin
    array.each do |user| 
        unless user.is_admin?
            user.update_score
        end
    end
end
```
file name unless.rb

##Ruby - Enumerable - reduce
A common scenario that arises when using a collection of any sort, is to get perform a single type of operation with all the elements and collect the result.

For example, a sum(array) function might wish to add all the elements passed as the array and return the result.

A generalized abstraction of same functionality is provided in Ruby in the name of reduce (inject is an alias). That is, these methods iterate over a collection and accumulate the value of an operation on elements in a base value using an operator and return that base value in the end.

Let's take an example for better understanding.
```
>>> (5..10).inject(1) {|product, n| product * n }
=> 151200

```
In above example, we have the following elements: a base value 1, an enumerable (5..10), and a block with expressions instructing how to add the calculated value to base value (i.e., multiply the array element to product, where product is initialized with base value)

So the execution follows something like this:
```
# loop 1
n = 1
product = 1
return value = 1*1

# loop 2
n = 2
product = 1
return value = 1*2

n = 3
product = 2
return value = 2*3

```
As you can notice, the base value is continually updated as the expression loops through the element of container, thus returning the final value of base value as result.

Other examples,
```
>>> (5..10).reduce(1, :*)   # :* is shorthand for multiplication
=> 151200
```
Consider an arithmetico-geometric sequence where the term of the sequence is denoted by . In this challenge, your task is to complete the sum method which takes an integer n and returns the sum to the n terms of the series.

```ruby

```
##Ruby Enumerables: 'any', 'all', 'none', and 'find'

Ruby offers various enumerables on collections that check for validity of the objects within it.

Consider the following example:

> arr = [1, 2, 3, 4, 5, 6]
=> [1, 2, 3, 4, 5, 6]
> h = {"a" => 1, "b" => 2, "c" => 3}
=> {"a" => 1, "b" => 2, "c" => 3}

The any? method returns true if the block ever returns a value other than false or nil for any element passed to it:

> arr.any? {|a| a % 2 == 0} # checks if any number in the array is even
=> True
> h.any? {|key, value| value.is_a? String} # checks if any value of the Hash object is of the type String
=> False

The all? method returns true if the block never returns false or nil for any element passed to it:

> arr.all? {|a| a.is_a? Integer} # checks if all elements of the array are of the type Integer
=> True
> h.all? {|key, value| key.is_a? String} # checks if all keys of the Hash object are of the type String
=> True

The none? method returns true if the block never returns true for any element passed to it:

> arr.none? {|a| a.nil?} # Checks if none of the elements in the array are of nil type
=> True
> h.none? {|key, value| value < 3} # checks if all values of the Hash object are less than 3
=> False

The find method returns the first element for which block is not false:

> arr.find {|a| a > 5} # returns the first element greater than 5 and `nil` if none satisfies the condition
=> 6
> h.find {|key, value| key == "b"} # returns an Array of the first match [key, value] that satisfies the condition and nil otherwise
=> ["b", 2]

Task
Based on what you've learned above, complete the functions declared in your editor below.

```ruby
def func_any(hash)
    # Check and return true if any key object within the hash is of the type Integer
    # If not found, return false.
 hash.any? { |key, value| key.is_a? Integer  }

end

def func_all(hash)
    # Check and return true if all the values within the hash are Integers and are < 10
    # If not all values satisfy this, return false.
   hash.all? {|key, value| value.is_a? Integer and value < 10}
end

def func_none(hash)
    # Check and return true if none of the values within the hash are nil
    # If any value contains nil, return false.
    hash.none? {|a, value| value.nil? }
end

def func_find(hash)
    # Check and return the first object that satisfies either of the following properties:
    #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20 
    #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
       return hash.find {|key, value| (key.is_a? Integer and value.is_a? Integer and value < 20) or (key.is_a? String and value.is_a? String and value[0] == 'a')} 
end

```

