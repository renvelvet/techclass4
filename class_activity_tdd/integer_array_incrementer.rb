class IntegerArrayIncrementer

  def increment(arr)
    output = []
    if arr.last < 9
      output = [arr.first, arr.last + 1]
    end
    output
  end
end