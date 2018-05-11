productos = {    "Producto1" => {tienda1: 10, tienda2: 15, tienda3: 21},
			     "Producto2" => {tienda1: 20, tienda2: 0, tienda3: 3},
			     "Producto3" => {tienda1: 4, tienda2: 8, tienda3: 0},
			     "Producto8" => {tienda1: 1, tienda2: 2, tienda3: 'NR'},
			     "Producto12" => {tienda1: 'NR', tienda2: 2, tienda3: 'NR'}
		   }


while true
	puts "Menu Principal, Ingrese una opcion:"
    opcion = gets.chomp.to_i
    

    case opcion
		when 1
			puts "Menu opcion 1, Ingrese\na) Mostrar la existencia por productos.
b) Mostrar la existencia total por tienda.
c) Mostrar la existencia total en todas las tiendas.
d) Volver al menú principal."
			seleccion = gets.chomp
			case seleccion

			  when "a"
			  	productos.each{ |k,v| 
			  	    suma = 0
			  		v.values.each { |x| suma = suma + x if x != 'NR'}
			  		puts "Existen #{suma} de #{k}"
			  	 }

			  when "b"
			  	tienda1 = 0
			  	tienda2 = 0
			  	tienda3 = 0
			  	productos.each{ |k,v|
			  		v.each{ |k,v|

			  			if k == :tienda1 && v != 'NR'
			  			tienda1 = tienda1 + v
			  			end

			  			if k == :tienda2 && v != 'NR'
			  			tienda2 = tienda2 + v
			  			end

			  			if k == :tienda3 && v != 'NR'
			  			tienda3 = tienda3 + v
			  			end
			  		}
			  	 }
			  	    puts "En tienda 1 hay #{tienda1} productos"
			  		puts "En tienda 2 hay #{tienda2} productos"
			  		puts "En tienda 3 hay #{tienda3} productos"

			  when "c"

				total = 0
			  	productos.each{ |k,v|
			  		v.each{ |k,v|
			  		   total = total + v if v != 'NR'
			  		}
			  	 }
			  	    puts "En tiendas hay #{total} productos"


			  when "d"
			  	puts "Volver al menu principal"
			  else
			  	puts "Opcion invalida"
			  end
		
		when 2
			puts "Ingrese producto a consultar"
			consulta_por_nombre = gets.chomp
			if productos.keys.include?(consulta_por_nombre)
				total_por_producto = 0
				productos[consulta_por_nombre].values.each{ |x| total_por_producto = total_por_producto + x}
			    puts "En tiendas hay #{total_por_producto} #{consulta_por_nombre}"
			end

		when 3
			puts "Consulta por no registrados"
			productos.each{ |nombre_producto,datos_producto|
			  		datos_producto.each{ |tienda,cantidad| puts "El #{nombre_producto} no esta registrado en #{tienda}" if cantidad == 'NR'}
			  	 }

		when 4
			puts "Ingrese cantidad de productos minima requerida"
			data = gets.chomp.to_i
			productos.each{ |nombre_producto,datos_producto|
			  		datos_producto.each{ |tienda,cantidad| puts "#{nombre_producto} tiene #{cantidad} productos" if cantidad <= data}
			  	 }
		
		when 5
			puts "Ingrese nombre de producto"
			data1 = gets.chomp
			puts "Ingrese stock en bodega 1"
			data2 = gets.chomp.to_i
			puts "Ingrese stock en bodega 2"
			data3 = gets.chomp.to_i
			puts "Ingrese stock en bodega 3"
			data4 = gets.chomp.to_i
			print productos.store(data1,{tienda1: data2, tienda2: data3, tienda3: data4})
		
		when 6
			break

		else
			puts "Opcion invalida"
	end


end