puts "Как тебя зовут?"
name = gets.chomp

puts "#{name}, Какой у тебя рост?"
height = gets.chomp

puts "#{name}, Какой у тебя вес?"
weight = gets.chomp

difference_women = 110
difference_men = 100
ideal_weight_result = height.to_i - difference_men.to_i

weight_result = weight.to_i - ideal_weight_result.to_i
weight_top = ideal_weight_result.to_i - weight.to_i

puts name + ', ' + if ideal_weight_result == weight.to_i
	"Ваш вес уже оптимальный"
elsif ideal_weight_result < weight.to_i
	"Ваш идеальный вес #{ideal_weight_result}кг, Вам надо похудеть на #{weight_result}кг"
else 
	"у Вас недостаток веса, идеальный для вас вес #{ideal_weight_result}кг, вам надо набрать #{weight_top}кг"
end