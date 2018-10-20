def generar_promedios

  file = File.open('curso.txt', 'r')
  contenido = file.readlines
  file.close


  puts contenido
  cantidad_de_lineas=0
  contenido.each do |columna3|
  puts columna3.split("/l")
  cantidad_de_lineas +=1

  end


end


def inasistencias
  faltas=0
  file = File.open('curso.txt', 'r')
  curso = file.readlines
  file.close

   curso.each do |base|
    nota = base.split(', ').map(&:chomp)
    notas = nota[1..4]
    puts notas

    end
   end



def aprobados

  puts 'pasaron'
end








menu =0
while menu !=1 do
  puts  'Seleccione la opcione deseada'
  puts  '#############################'
  puts  '1 Para generar archivo plano con promedios'
  puts  '  #########################################'
  puts  '2 Para visualizar inasistencias'
  puts  '  #############################'
  puts  '3 Para visualizar alumnos aprobados'
  puts  '  #################################'
  puts  '4 Para salir del programa'
  puts  '  ########################'
  opcion_menu=gets.chomp.to_i


  if opcion_menu >= 1 && opcion_menu <= 4
    if opcion_menu == 1
      generar_promedios

    elsif opcion_menu == 2
      inasistencias

    elsif opcion_menu == 3
      aprobados

    elsif opcion_menu == 4
      menu=1
      puts '#########################'
      puts '#  CERRANDO  APP        #'
      puts '#########################'
    end
  else
      puts '#########################'
      puts '#ESCRIBIR OPCION VEALIDA#'
      puts '#########################'
 end
end