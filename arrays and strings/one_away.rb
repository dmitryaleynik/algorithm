# frozen_string_literal: true

def one_away(string1, string2)
  return false if (string1.length - string2.length).abs > 1

  number_of_equals = string1.chars.count { |char| string1.count(char) == string2.count(char) }
  number_to_compare = string1.length > string2.length ? string1.length : string2.length
  number_of_equals == number_to_compare - 1
end

p one_away('p', 'pl')
