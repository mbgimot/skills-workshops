require_relative 'coin'
require_relative 'headcount_printer'
require_relative 'randomiser'

class Headcount

  attr_reader :head_count

  def initialize
    @coin = Coin.new
    @printer = HeadCount_Printer.new
    @head_count = 0
  end


  def flip
    if @coin.flip_coin
      puts "It's a head!"
      add_head
    else
      puts "It's a tail!"
    end
  end

  def add_head
    @head_count += 1
  end

  def printer
    @printer.prnt(@head_count)
  end



end
