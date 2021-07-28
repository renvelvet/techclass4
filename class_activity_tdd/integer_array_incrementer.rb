class IntegerArrayIncrementer

  def increment(arr)
    output = []
    if arr.length == 1
      if arr.first == 9
        output = [1, 0]
      else 
        output = [arr.first + 1]
      end
    elsif arr.length == 2
      if arr.last < 9
        output = [arr.first, arr.last + 1]
      elsif arr.first != 9
        output = [arr.first + 1, 0]
      else
        output = [1, 0, 0]
      end
    end

    output
  end
end