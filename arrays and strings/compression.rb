# frozen_string_literal: true

def compression(str)
  arr = str.chars

  i = 0
  result = ''

  while i < arr.size
    counter_equality = i

    counter_equality += 1 while arr[counter_equality] == arr[i]

    shift = counter_equality - i
    result += "#{arr[i]}#{shift}"
    i += shift
  end

  result.length < str.length ? result : str
end

p compression('aabcccccaaa')
