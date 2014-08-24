class Temperature
  def initialize(args)
    @temperature = args.keys[0] == :f ? Fahrenheit.new(args[:f]) : Celsius.new(args[:c]) 
    
  end
  
  def in_fahrenheit
    @temperature.in_fahrenheit
  end
  
  def in_celsius
    @temperature.in_celsius
  end
  
  def self.from_fahrenheit(degree)
    Fahrenheit.new(degree)
  end
  def Temperature.from_celsius(degree)
    Celsius.new(degree)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temp = temp
  end
  
  def in_fahrenheit
    @temp
  end
  
  def in_celsius
    ((@temp - 32) * 5)/9.0
  end
end

class Celsius < Temperature
  def initialize(temp)
    @temp = temp
  end
  
  def in_fahrenheit
    (@temp * 9)/5.0 + 32
  end
  
  def in_celsius
    @temp
  end
end