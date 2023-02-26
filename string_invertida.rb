puts "Digite uma palavra:"
string_original = gets.chomp
string_invertida = ""

# each vai percorre cada caractere da string
string_original.each_char do |caractere|
  string_invertida = caractere + string_invertida
end

puts "A string invertida é: #{string_invertida}"