class Calculator
  def push(n)
    @args ||= []
    @args << n
  end

  def add
    @args.reduce(:+)
  end
end
