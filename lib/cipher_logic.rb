def caesar_cipher(str, caesar_num)
  str.each_codepoint do |char|
    if char + caesar_num <= 126
      print (char + caesar_num).chr
    else
      print (char + caesar_num - 95).chr
    end
  end
end

def caesar_decipher (str, caesar_num)
    str.each_codepoint do |char|
        if char - caesar_num >= 32
          print (char - caesar_num).chr
        else
          print (126 - (char + caesar_num)).chr
        end
      end
end