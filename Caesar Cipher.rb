def store_uppercased_letters(arr)
  case_indexes = []
  arr.each_with_index do |char, idx|
    if char == char.upcase
      case_indexes << idx
    end
  end
    case_indexes
end
def make_arr(string)
  string.split("")
end
def convert_to_number(string)
  string
        .map(&:downcase)
        .map(&:ord)
end
def shift_letters(arr, shift_factor)
  arr.map do |letter_code|
    if letter_code + shift_factor > 122
      letter_code + shift_factor - 25
    elsif letter_code == 32
      letter_code
    else
      letter_code += shift_factor
    end
  end
end
def convert_to_characters(codes)
  codes.map(&:chr)
end
def make_uppercased(arr, uppercased_letters)
  arr.each_with_index.map do |char, idx|
    if uppercased_letters.include?(idx)
      char.upcase
    else
      char
    end
  end
end
def make_string(arr)
  arr.join("")
end

def caesar_cipher(normal_text, shift_factor = 3)
  normal_text_arr = make_arr(normal_text)
  uppercased_letters = store_uppercased_letters(normal_text_arr)
  text_codes = convert_to_number(normal_text_arr)
  shifted_letters_codes = shift_letters(text_codes, shift_factor)
  shifted_letters = convert_to_characters(shifted_letters_codes)
  shifted_arr = make_uppercased(shifted_letters, uppercased_letters)
  make_string(shifted_arr)
end

# Try this:
#################>
string = "Github"
shift_factor = 20
#################>

puts caesar_cipher(string, shift_factor)