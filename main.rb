require_relative './lib/cipher_logic'
require_relative './lib/clear'

puts 'Welcome to Caesar-Cipher by petumazo'
puts

repeat = false

until repeat
  puts 'Please type ´code´ if you want to CIPHER or ´decode´ if you want to DECIPHER'
  action = gets.chomp
  case action.downcase
  when 'code'
    puts 'Enter the word/words you want to cipher'
    str = gets.chomp
    puts 'Enter the cipher number'
    num = gets.chomp.to_i
    puts 'After making a complex cipher process, this is the result:'
    caesar_cipher(str, num)
    clear
    puts 'If you want to cipher or decipher again please type ´again´'
    again = gets.chomp
    repeat = again != 'again'
  when 'decode'
    puts 'Enter the word/words you want to decode'
    str = gets.chomp
    puts 'Enter the cipher number'
    num = gets.chomp.to_i
    puts 'After making a complex decipher process, this is the result:'
    caesar_decipher(str, num)
    clear
    puts 'If you want to cipher or decipher again please type ´again´'
    again = gets.chomp
    repeat = again != 'again'
  else
    repeat = false
  end
end
