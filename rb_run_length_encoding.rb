require 'byebug'
def encode string_encode
  string_decode = ""
  count_letter = 1
  length_word_index = (string_encode.length - 1)
  temp_letter = string_encode[0]
  for i in (1..(length_word_index)) do
    if temp_letter == string_encode[i]
      count_letter += 1
      string_decode << encode_render(temp_letter, count_letter) if (i == (length_word_index))
    else
      string_decode << encode_render(temp_letter, count_letter)
      count_letter = 1
      string_decode << encode_render(string_encode[i], count_letter) if (i == (length_word_index))
    end
    temp_letter = string_encode[i]
  end
  string_decode
end

def encode_render(letter, count_letter)
  count_letter == 1 ? letter : "#{count_letter}#{letter}"
end

def decode string
end

puts encode("AAABBSDASDASDER")