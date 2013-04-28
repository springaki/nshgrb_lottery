class Lottery
  def initialize(winners)
    @winners = winners
    @ary = []
  end
 
  def add(name, weight)
    @ary += Array.new(weight, name)
  end
 
  def winners
    winners = []
    @winners.times {
      winners << @ary.at(rand(@ary.size))
    }
    winners
  end
end
