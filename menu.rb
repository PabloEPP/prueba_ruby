def read_alum(file_name)
    file = File.open(file_name, 'r')
    alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
    file.close
    alum
end


#Imprimir en pantalla el nombre de cada alumno y el promedio de sus notas

def calcular_promedio
    aux_arr = {}
    alum = read_alum('alumnos.csv')
    alum.each do |item_line|
      acc = 0
      item_line.each_with_index do |elem, index|
        acc += elem.to_i / elem.to_f if index != 0
      end
      puts "El Alumno #{item_line[0]} tiene Promedio #{acc}"
      aux_arr[item_line[0]] = acc.
    end
    return aux_arr
  end


  #Imprimir en pantalla el nombre de cada alumno y la cantidad de inasistencias

def inasistencias_alumno
    aux_arr = {}
    alum = read_alum('alumnos.csv')
    alum.each do |item_line|
      acc = 0
      item_line.each_with_index do |elem, index|
        acc += elem.to_i / elem.to_f if index != 0
        puts "El Alumno #{item_line[0]} tiene #{acc} Inasistencias"
        aux_arr[item_line[0]] = acc.
        end
      return aux_arr
  end







  #Menu
condition = 0
while condition != 4
  puts "Elije una opción entre 1 y 3. 4 para salir"
  condition = gets.chomp.to_i
  case condition
  when 1
    calcular_promedio
  when 2
    inasistencias_alumno
  when 3
    #Metodo alumnos aprobados
  when 4
    puts "Adios"
  else
    puts "Opción no válida, ingrese una opcion del 1 al 3, 4 para Salir"
  end
end