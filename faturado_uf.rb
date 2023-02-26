faturamento = {
    "SP" => 67836.43,
    "RJ" => 36678.66,
    "MG" => 29229.88,
    "ES" => 27165.48,
    "Outros" => 19849.53
  }
  
  # O metodo reduce(:+) vai pegar todo o hash e somar
  total_faturamento = faturamento.values.reduce(:+)
  
  # novo hash
  percentuais = {}
  
  # Percorre o hash e divide cada chave pelo total_faturamento adicionado no porcentuais
  faturamento.each do |estado, valor|
    percentual = (valor / total_faturamento) * 100
    percentuais[estado] = percentual
  end
  
  # percorre o hash percentuais e imprime key e value
  puts "Percentual de representação por estado:"
  percentuais.each do |estado, percentual|
    puts "#{estado}: #{percentual.round(2)}%"
  end