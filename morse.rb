class MorseDecoder
  MorseSymbols =
    {
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
  def self.character_decoder(characterCode)
    MorseSymbols[characterCode]
  end

  def self.word_decoder(wordcode)
    wordcode.split.map { |characters| character_decoder(characters) }.join
  end

  def self.message_decoder(messageCode)
    messageCode.split('   ').map { |wordcharacters| word_decoder(wordcharacters) }.join(' ')
  end
end
decoded_message = MorseDecoder.message_decoder
('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts decoded_message
