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

def multiply(*x) #should take a splat and go through all of them
  x.inject(:*)
end

def power(x,y)
  x**y
end

def factorial(x)
  if x == 0
    1
  else
    (1..x).inject(:*)
  end
end
  