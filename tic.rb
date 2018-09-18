class Tic

def init
  @tab = Array.new(3) { Array.new }
  @player = 1
end

def llenArr
  t = 3
  for i in (0...t)
    for j in (0...t)
      @tab[i][j] = -1
    end
  end
end

def impArr
  for i in (0 ... @tab.size)
    if i == 0
          print "\t#{i}"
    else
          print "\s#{i}"      
    end
  end 
  print "\n"
  for i in (0...@tab.size)
    print "   #{i}   "
    for j in (0...@tab.size)
   #   if @tab[i][j] == -1
   #       print "█\s"       
   #     else
   #       print "#{@tab[i][j]}\s" 
   #   end
      case @tab[i][j]
      when -1 then print "█\s"
      when 1 then  print "X\s" 
      when 2 then  print "O\s" 
      end

    end
    print "\n"
  end
end

def instruc
  print "Introduce las coordenadas (x,y) ej. (0,0)\n"
  print "Es el turno del jugador #{@player}\s"
  print  "Preciona x para salir \n"
  op = gets.chomp
end
  
def user(pos)
   x = pos[0].to_i
   y = pos[1].to_i
   puts @player
if @player == 1
     p = 1
     @player = 2
    else
     p = 2
     @player = 1
  end 
  @tab[x][y] = p

end

end


 # puts "Ancho de tablero, recuerda es nxn "
 # n = gets.chomp
 # n = n.to_i
 #  tab = Array.new(3) { Array.new }

  d = Tic.new
  d.init
  d.llenArr
loop do
   d.impArr
   opc = d.instruc
   d.user(opc)
   break if opc == 'x'
end




