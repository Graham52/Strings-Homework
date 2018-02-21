class Strings

  def initialize(string1, string2)
    @string1 = string1
    @string2 = string2
  end

  def string
    return_string = ""
    return_string = "String 1 is #{@string1}. String 2 is #{@string2}."
    if @string1.eql?(@string2)
      return_string = return_string + " Strings match."
    else
      return_string = return_string + " Strings do not match."
    end

    return return_string
  end

  def palindrome
    if @string1.eql?(@string1.reverse)
      return "String is a Palindrome"
    else
      return "String is not a Palindrome"
    end
  end

  def is_isogram
    if @string1.downcase.chars.uniq.join.eql? @string1.downcase
      return "String is an Isogram"
    end

    return "String is not an Isogram"
  end

  def anagram
    if @string1.chars.sort.join.eql? @string2.chars.sort.join
      return "String is an anagram"
    else
      return "String is not an anagram"
    end
  end

end
