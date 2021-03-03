# frozen_string_literal: true

def urlify(string, _size)
  string.rstrip.gsub(/\s/, '%20')
end

p urlify('Mr John Smith ', 12)
