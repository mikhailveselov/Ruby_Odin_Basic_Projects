# frozen_string_literal: true

def caesar_cipher(string, shift)
  lowercase = ('a'..'z').to_a
  uppercase = ('A'..'Z').to_a
  result = ''

  string.each_char do |char|
    if lowercase.include?(char)
      old_index = lowercase.index(char)
      new_index = (old_index + shift) % 26
      result << lowercase[new_index]
    elsif uppercase.include?(char)
      old_index = lowercase.index(char)
      new_index = (old_index + shift) % 26
      result << uppercase[new_index]
    else
      result << char

    end
  end
  result
end

puts caesar_cipher('bla bla, bla!', -1)
#end
