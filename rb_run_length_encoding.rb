require 'byebug'
def encode string_encode
  string_decode = ""
  temp_letter = ""
  count_letter = 1

  length_word = string_encode.length
  for i in (0..(length_word-1)) do
    if i == 0
      temp_letter = string_encode[i]
    elsif i == (length_word-1)
      if temp_letter == string_encode[i]
        count_letter += 1
        string_decode += "#{count_letter}#{temp_letter}"
      else
        string_decode += "#{count_letter}#{temp_letter}"
        string_decode += "1#{string_encode[i]}"
      end
    else
      if temp_letter == string_encode[i]
        count_letter += 1
      else
        string_decode += "#{count_letter}#{temp_letter}"
        count_letter = 1
      end
      temp_letter = string_encode[i]      
    end 
  end
  return string_decode
end

def decode string
end

puts encode("ABC")