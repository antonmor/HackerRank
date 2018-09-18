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

def is_number? string
  true if Integer(string) rescue false
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
  print  "Para salir preciona la tecla 'x'  \n"
  op = gets.chomp
end

def win(x,y)
win_p1 = [1,1,1]
win_p2 = [2,2,2]
# fila
if (@tab[x] == win_p1) == true
  puts "P1 es el vencedor...\n" 
elsif (@tab[x] == win_p2) == true
  puts "P2 es el vencedor...\n" 
end

#columna
if (@tab.collect{|v| v[y]} == win_p2)
  puts "P1 es el vencedor...\n" 
elsif (@tab.collect{|v| v[y]} == win_p1)
  puts "P2 es el vencedor...\n" 
end
  
#diagonal
puts @tab.collect {|v| arr[v][v]}

end  

def user(pos)
   x = pos[0].to_i
   y = pos[1].to_i
if @player == 1
     p = 1
     @player = 2
    else
     p = 2
     @player = 1
  end 
  @tab[x][y] = p
win(x,y)
end

end

  d = Tic.new
  d.init
  d.llenArr
loop do
   d.impArr
   opc = d.instruc
   d.is_number? opc
   d.user(opc)
   break if opc == 'x'
end