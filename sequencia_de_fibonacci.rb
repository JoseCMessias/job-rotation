puts "Digite um número: "
numero = gets.to_i

valor_anterior = 0
valor_atual = 1
proximo_valor = valor_anterior + valor_atual

while proximo_valor < numero do
    valor_anterior = valor_atual
    valor_atual = proximo_valor
    proximo_valor = valor_anterior + valor_atual
end

if proximo_valor == numero
    puts "#{numero} pertence à sequência de Fibonacci."
else
    puts "#{numero} não pertence à sequência de Fibonacci."
end