# frozen_string_literal: true

def palindrom_permutions(string)
  str = string.gsub(/\s/, '').downcase

  p str
  p str.length.even?
  return str.chars.all? { |char| str.count(char).even? } if str.length.even?

  str.chars.count { |char| str.count(char).even? } == str.length - 1
end

p palindrom_permutions('ab2 2 22ba')
