def echo string
  string
end

def shout string
  string.upcase!
end

def repeat string, amount=2
  final = ""
  amount.times { final += (string + " ") }
  final.strip
end

def start_of_word string, amount
  string[0,amount]
end

def first_word string
  string[/^(.*)\s/, 1]  
end

def titleize string
  string.capitalize
end