require 'byebug'
def encode string_encode
  string_decode = ""
  count_letter = 1

  length_word = string_encode.length
  for i in (0..(length_word-1)) do
    if i == 0
      temp_letter = string_encode[i]
      next
    end
    last_word = (i == (length_word-1))
    if temp_letter == string_encode[i]
      count_letter += 1
      string_decode << encode_render(temp_letter, count_letter) if last_word
    else
      string_decode << encode_render(temp_letter, count_letter)
      count_letter = 1
      string_decode << encode_render(string_encode[i], count_letter) if last_word
    end
    temp_letter = string_encode[i]
  end
  string_decode
end

def encode_render(letter, count_letter)
  if count_letter == 1
    letter
  elsif count_letter > 1
    "#{count_letter}#{letter}"
  end
end

def decode string
end