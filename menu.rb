require "colorize"

class Greet
    
    @@food =[]
    
    @@bill = []
    
    def initialize

     
    
    puts "Welcome what is you name".colorize(:red)
    name = gets.strip
    puts("...")
    puts "welcome".colorize(:red)
    puts "#{name}"
    puts("...")
    
    puts " what what would you like to eat?".colorize(:red)
    puts "1) Menu".colorize(:yellow)
    puts "2) Quit".colorize(:yellow)
    choice = gets.to_i

case choice
    when 1 

      meal
       

    when 2
        exit
    else "invalid choice"
    end
end

 
  def meal
        
       
    puts "please choose an what you would like".colorize(:red)
    puts"...".colorize(:red)
    puts "1) steak".colorize(:yellow)
    puts "2) lobster tail".colorize(:yellow)
    puts "3) shrimp" .colorize(:yellow)
    puts "(....Desert....)".colorize(:yellow)
    puts "4) cake".colorize(:yellow)
    puts "5) donut".colorize(:yellow)
    puts "6) check out".colorize(:yellow)

    food = gets.to_i 

    case food

    when 1 
        puts " great choice ".colorize(:red)
        steak = "steak"
        @@food.push(steak)
        steak1 = 25
        @@bill.push(steak1)
        meal

    when 2
        puts " great choice ".colorize(:red)
        lobster = "lobster"
        @@food.push(lobster)
       lobster1 = 20
        @@bill.push(lobster1)
 meal
    
    when 3
        puts " great choice ".colorize(:red)
        lobster = "shrimp"
        @@food.push(shrimp)
        shrimp1 = 15
        @@bill.push(shrimp1)
meal
    
    when 4
        puts "great choice".colorize(:red)
        cake = "cake"
        @@food.push(cake)
        cake1 = 5
        @@bill.push(cake1)
meal
    when 5
        puts "great choice".colorize(:red)
        donut = "donut"
        @@food.push(donut)
        donut1 = 3
        @@bill.push(donut1)
meal
    

    when 6

    @@food.each {|val|
        puts "#{val}"}

        
  total = @@bill.each.inject(0, &:+)
        puts total
    end



end
end

       







Greet.new
