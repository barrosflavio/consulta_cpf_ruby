require "cpf_cnpj"

def input(question)
  print "#{question}"
  gets.chomp
end

def check_lenght(var)
  if var.size <= 10
    return false
  end
end

def check_numbers(var)
  var.chars.all? do |n|
    unless ("0".."9").include?(n)
      return false
    end
  end
  return true
end

cpf = input("Digite seu CPF (Apenas numeros): ")
if check_lenght(cpf) != false
  if check_numbers(cpf) == true
    check = CPF.valid?(cpf)
    case check
    when true
      puts "CPF Valido!"
    when false
      puts "CPF Invalido!"
    end
  else
    puts "Digite apenas numeros!"
  end
else
  puts "Você não digitou nada parecido com um CPF"
end