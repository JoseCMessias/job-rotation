# Gerar um ranger de 30 numero aleatorios de 100 até 500
faturamento_diario = Array.new(30) { rand(100..500) }

# Vai imprimir os valores gerando pelo rand
print "#{faturamento_diario}\n"

# Calculando menor e maior valor de faturamento
menor_faturamento = faturamento_diario.min
maior_faturamento = faturamento_diario.max

# Calculando média mensal de faturamento
media_mensal = faturamento_diario.sum / faturamento_diario.size.to_f

# Calculando número de dias em que o faturamento diário foi superior à média mensal
dias_acima_da_media = faturamento_diario.count { |faturamento| faturamento > media_mensal }

puts "Menor valor de faturamento diário: R$ #{menor_faturamento}"
puts "Maior valor de faturamento diário: R$ #{maior_faturamento}"
puts "Número de dias em que o faturamento diário foi superior à média mensal: #{dias_acima_da_media}"