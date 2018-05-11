def strings_archivo(a, b)
  File.open( 'index.html','w'){|file| file.puts("<p>#{a}</p>\n<p>#{b}</p>")}
  return nil
end

def array_archivo(array)
  File.open( 'index.html','a'){ |file|
  	if array.length != 0 
  		file.puts("<ul>")
  		array.each { |x| file.puts("\t<li>#{x}</li>") }
  		file.puts("</ul>")
 	end
 }
 return nil
end

def array_archivo_color(array, color)
  File.open( 'index.html','a'){ |file|
  	if array.length != 0 
  		file.puts("<ul>")
  		array.each { |x| file.puts("\t<li style=\"color:#{color};\">#{x}</li>") }
  		file.puts("</ul>")
 	end
 }
 return nil
end

array = ["esto", "es", "un", "array"]

strings_archivo('hola', 'chao')
array_archivo(array)
array_archivo_color(array,"red")
