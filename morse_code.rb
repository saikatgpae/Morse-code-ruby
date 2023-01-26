def decode_char(char)
    morse_dict = {
      '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
      '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
      '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
      '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
    }
    morse_dict[char]
  end
  puts decode_char('.-') #=> A
  def decode_word(arr)
    word = ''
    arr.split.each { |i| word += decode_char(i) }
    word
  end
  puts decode_word('-- -.--') #=> MY
  