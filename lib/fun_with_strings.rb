module FunWithStrings
  def palindrome?
    self.downcase!
    self.gsub!(/\W/, '') 
    reverse = self.reverse
    return true if self == reverse
  end
  def count_words
    self.downcase!
    words = self.split()
    word_count = Hash.new(0)
    words.each do |x|
      x.gsub!(/\W+/, '')
      word_count[x] += 1
    end
    word_count.delete('')
    return word_count
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
