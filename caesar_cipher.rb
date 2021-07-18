def caesar_cipher(string,shift)
  string_array = string.split("")
  string_array.map! do |char|
    case char
    when ('a'..'z')
      ('a'..'z').include?((char.ord + shift).chr) ? (char.ord + shift).chr : (char.ord + shift - 26).chr
    when ('A'..'Z')
      ('A'..'Z').include?((char.ord + shift).chr) ? (char.ord + shift).chr : (char.ord + shift - 26).chr
    else
      char
    end    
  end
  string_array.join("")
end

loop do
  p "enter a string"
  s = gets.chomp
  p "enter shift amount"
  x = gets.chomp.to_i
  p caesar_cipher(s,x)
end
