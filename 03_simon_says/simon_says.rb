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
  words = string.split(' ')
  
  words.each do |word| 
    word.capitalize!
  end
  capital_case = words.join(' ')
  ##very ugly and lazy, it's late...
  capital_case.gsub(/\sThe/, ' the').gsub(/\sA/, ' a').gsub(/\sOver/, ' over').gsub(/\sAnd/, ' and')

end