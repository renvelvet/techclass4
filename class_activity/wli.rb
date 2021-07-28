class Wli
  attr_accessor :names

  def initialize
    @names = []
  end

  def likes
    if @names.length == 0
      text = "no one likes this"
    elsif @names.length == 1
      text = "#{@names.first} likes this"
    elsif @names.length == 2
      text = "#{@names.join(" and ")} like this"
    elsif @names.length == 3
      arr = @names.first(2)
      text = "#{arr.join(", ")} and #{@names.last} like this"
    elsif @names.length >= 4
      arr = @names.first(2)
      text = "#{arr.join(", ")} and #{@names.length.-(2)} others like this"
    end

    text
  end
end
