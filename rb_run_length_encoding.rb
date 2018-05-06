require 'byebug'
def encode string_encode
  string_decode = ""
  temp_letter = string_encode[0]
  count_letter = 1

  length_word = string_encode.length
  for i in (1..(length_word-1)) do
    if i == (length_word-1)
      status_last = temp_letter == string_encode[i]
      count_letter += 1 if status_last
      string_decode += encode_render(temp_letter, count_letter)
      string_decode += "#{string_encode[i]}" unless status_last
    else
      if temp_letter == string_encode[i]
        count_letter += 1
      else
        string_decode += encode_render(temp_letter, count_letter)
        count_letter = 1
      end
      temp_letter = string_encode[i]      
    end 
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

puts encode("AAAABBBCCCF")