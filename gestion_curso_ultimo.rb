
def promedio_aprobado nota_aprobar


  file = File.open('curso.txt', 'r')
  curso = file.readlines
  file.close

  #SEPARAMOS POR LINEA CADA ITEM DE CURSO.TXT
  vuelta=0 # variable que cuenta la cantidad de la cantidad de lineas split("/l")
  curso.each do |dato|
  lineas = dato.split("/l").map(&:chomp)

  alumnos="alumno#{vuelta +=1}" #creo un arreglo con cada linea que separasplit("/l") con cada iteraciin cambia el nombre
  alumnos=lineas
   #puts alumnos

   largo=0
  sum=0

  b = alumnos.join.split(", ").map(&:to_i)
  alm = alumnos.join.split(", ")[0]

  b.each do |notas_validas|
  if notas_validas.class==Integer && notas_validas !=0
  largo +=1
  sum=notas_validas+sum
  end
  prom_1=sum/largo.to_f
end
prom_1=sum/largo.to_f
if prom_1>=nota_aprobar
puts '                                 '

puts "#{alm}     :  #{prom_1}"
puts '                                 '

end
end

end


def pruebas_pendientes alumnos
  pendientes=0
  c = alumnos.join.split(", ")
  nombre=c[0]
  c.each do |i|
   if i == 'A'
    pendientes +=1
   end
  end
  puts "Notas pendientes : #{pendientes}"
end

def promedios_alumnos alumnos

  vuelta1=0
  largo=0
  sum=0

  b = alumnos.join.split(", ").map(&:to_i)
  alm = alumnos.join.split(", ")[0]


  b.each do |notas_validas|

  if notas_validas.class==Integer && notas_validas !=0
  largo +=1
  sum=notas_validas+sum
  end

end



  prom_1=sum/largo.to_f


  puts "Alumno           : #{alm}" #b = alumnos.join.split(", ")[0]
  puts "Notas            : #{largo}"
  puts "Promedio         : #{prom_1}"#sum/largo.to_f
  pruebas_pendientes alumnos


  puts "                                                           "




  end




def generar_promedios

     cls
     file = File.open('curso.txt', 'r')
     curso = file.readlines
     file.close

     #SEPARAMOS POR LINEA CADA ITEM DE CURSO.TXT
     vuelta=0 # variable que cuenta la cantidad de la cantidad de lineas split("/l")
     curso.each do |dato|
     lineas = dato.split("/l").map(&:chomp)

     alumnos="alumno#{vuelta +=1}" #creo un arreglo con cada linea que separasplit("/l") con cada iteraciin cambia el nombre
     alumnos=lineas


     promedios_alumnos alumnos



    end

  end




def inasistencias

    file = File.open('curso.txt', 'r')
    curso = file.readlines
    file.close

    faltas=0
    curso.each do |base|
    nota = base.split(', ').map(&:chomp)
    nota.each do |datos|

      if datos == 'A'
      faltas += 1
      end

    end

    end
   cls
   puts '###########################################'
   puts "#PRUEBAS PENDIENTES DEL CURSO:    #{faltas}       #"
   puts '###########################################'
   puts '                                               '
   puts '                                               '


  end


def aprobados
  cls
  menu_filtro=0
  opcion_menu=0
  while menu_filtro !=1 do
  puts  '################################################'
  puts  '#PARA FILTRAR POR ALUMNOS APROBADOS PRESIONE 1 #'
  puts  '################################################'
  puts  '#SI QUIERE FILTRAR POR NOTA PRESIONE         2 #'
  puts  '################################################'
  puts  '#PARA REGRESAR AL INICIO    PRESIONE         3 #'
  puts  '################################################'

           opcion_menu=gets.chomp.to_i
          if opcion_menu >= 1 && opcion_menu <= 3
            if opcion_menu == 1
              cls
              nota_aprobar=5.0
              puts 'ALUMNOS APROBADOS'
              promedio_aprobado (nota_aprobar=5.0)

            elsif opcion_menu == 2
              cls

              puts '##############################################################'
              puts '#INGRESE NOTA PARA FILTRAR ALUMNOS NOTAS VALIDAS 1 HASTA 10  #'
              puts '##############################################################'
              nota_filtrar=gets.chomp.to_f
              puts "ALUMNOS QUE TIENEN NOTA MAYOR #{nota_filtrar}"
              if nota_filtrar >= 1 && opcion_menu <= 10
                nota_aprobar=nota_filtrar
                promedio_aprobado (nota_aprobar)
              end




            elsif opcion_menu == 3
              menu_filtro=1
              cls
              puts '############################'
              puts '#  REGRESANDO MENU INICIO  #'
              puts '############################'

            end
           else
            cls
            puts '#########################'
            puts '#ESCRIBIR OPCION VEALIDA#'
            puts '#########################'
          end
        end
      end


def cls
system 'clear'
end

cls
menu =0
while menu !=1 do
  puts  '                                            '
  puts  '############################################'
  puts  '#SELECCIONE LA OPCION DESEADA              #'
  puts  '############################################'
  puts  '#1 Para generar archivo plano con promedios#'
  puts  '############################################'
  puts  '#2 Para visualizar inasistencias           #'
  puts  '############################################'
  puts  '#3 Para visualizar alumnos aprobados       #'
  puts  '############################################'
  puts  '#4 Para salir del programa                 #'
  puts  '############################################'
  puts  '                                            '
  opcion_menu=gets.chomp.to_i


  if opcion_menu >= 1 && opcion_menu <= 4
    if opcion_menu == 1

      generar_promedios



      #muestra_promedio

    elsif opcion_menu == 2
      inasistencias

    elsif opcion_menu == 3
      aprobados

    elsif opcion_menu == 4
      menu=1
      cls
      puts '#########################'
      puts '#  CERRANDO  APP        #'
      puts '#########################'
    end
  else
      cls
      puts '#########################'
      puts '#ESCRIBIR OPCION VEALIDA#'
      puts '#########################'
 end
end
