@container = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

# decoding a character
def decode_char(char)
  @container[char]
end

puts decode_char('.-')

def decode_word(word)
  @result = ''
  word.split.each { |i| @result.concat(@container[i]) }
  @result
end
puts decode_word('-- -.--')

# decoding an entire message
def decode(message)
  @sentence = message.split('   ')
  @decoded_sentence = ''
  @sentence.each do |n|
    @decoded_sentence += "#{decode_word(n)} "
  end
  @decoded_sentence.strip
end
puts decode('-- -.--   -. .- -- .')
