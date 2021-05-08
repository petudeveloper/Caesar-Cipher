#!/usr/bin/env ruby

require_relative './lib/cipher_logic'

puts
puts 'Welcome to Caesar Cipher by petumazo'
puts
repeat = false

until repeat
    puts 'Please type ´code´ if you want to CIPHER or ´decode´ if you want to DECIPHER'
    action = gets.chomp
    if action.downcase == "code"
        puts 'Enter the word/words you want to cipher'
        str = gets.chomp
        puts 'Enter the cipher number'
        num = gets.chomp.to_i
        puts "After making a complex cipher process, this is the result:" 
        caesar_cipher(str,num)
        puts
        puts 'If you want to cipher or decipher again please type ´again´'
        again = gets.chomp
        again == 'again' ? repeat = false : repeat = true
    elsif action.downcase == "decode"
        puts 'Enter the word/words you want to decode'
        str = gets.chomp
        puts 'Enter the cipher number'
        num = gets.chomp.to_i
        puts "After making a complex decipher process, this is the result:"
        caesar_decipher(str,num)
        puts
        puts 'If you want to cipher or decipher again please type ´again´'
        again = gets.chomp
        again == 'again' ? repeat = false : repeat = true
    else
        repeat = false
    end
end

