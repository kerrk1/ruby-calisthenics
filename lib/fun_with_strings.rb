module FunWithStrings
  def palindrome?(string)
    r_string = string.reverse
    return true if r_string == string
  end
  def count_words
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
