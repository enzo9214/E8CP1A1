data = File.open('peliculas.txt', "r") { |archivo| archivo.readlines }
print data.count
