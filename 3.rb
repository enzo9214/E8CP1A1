##
##Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total
##de palabras. El método debe devolver este valor.
##Crear un método similar para que además reciba -como argumento- un 
##string
##En
##este caso el método debe contar únicamente las apariciones de ese 
##string
##en el
##archivo
##

def contar_palabras(a)
	data = File.open(a, "r") { |archivo| archivo.read }
	data.split(' ').length
end

def contar_una_palabra(a, b)
	suma = 0
	data = File.open(a, "r") { |archivo| archivo.read }
	data.split(' ').each { |x| suma+=1 if x == b}
	suma
end

puts contar_palabras("peliculas.txt")
puts contar_una_palabra("peliculas.txt", "Guerra")