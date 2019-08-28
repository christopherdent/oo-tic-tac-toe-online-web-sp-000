require 'pry'
class TicTacToe
  
  def initialize
    
    
   @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
   
   
  end 
  
  WIN_COMBINATIONS = [[0, 1, 2],
                      [3, 4, 5], 
                      [6, 7, 8],
                      [0, 4, 8],
                      [2, 4, 6],
                      [0, 3, 6],
                      [1, 4, 7],
                      [2, 5, 8]]
                      
  def display_board
    
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end 

  
  
  def input_to_index(user_input)
  user_input.to_i - 1
  end 
  
  def move(index, token="X")
    
    @board[index] = token
    
  end 
  
  
  def position_taken?(index)
    if @board[index] == "X" 
      true
    elsif @board[index] == "O"
      true 
    else
      false 
    end 
  end 
  
  
  def valid_move?(index)
    if position_taken?(index)
      false
    elsif 
      index > 8
      false 
    else 
      true 
    end
  end 
  
  
    
  def turn_count
    counter = 0
    @board.each do |spot|
      if spot == "X" || spot == "O"
        counter += 1
      end
    end 
  counter
end
  
  
  
  
  
  def current_player
    if turn_count.odd?
      "O"
    else 
      "X"
    end 
  end 
  
  

def turn
  puts "Please enter 1-9:"
   user_input = gets.strip
   index = input_to_index(user_input)
   character = current_player
     if valid_move?(index)
      move(index, token="X")
     
      else
    turn 
  display_board
  end
  
end
  
  
    
  
  
  
  
 def won?(index)
   
   if @board == WIN_COMBINATIONS.any?
     true
   else
     false 
   end
   
 end 
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
end  
