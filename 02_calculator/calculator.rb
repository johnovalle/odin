def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(array)
  sum = array.inject(:+)
  sum ||= 0
end

def multiply(x,y) #should take a splat and go through all of them
  x*y
end